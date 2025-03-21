using PowerModels
using Ipopt
using JuMP
using Gurobi
using XLSX
include("multiperiod_opf.jl")

# Load the DEMAND data
staticData = PowerModels.parse_file("src/GhanaGridV2.m")

##ENABLE THIS for projected solar profile
# for gen in keys(staticData["gen"])
#     if staticData["genfuel"][gen]["col_1"] == "solar"
#         staticData["gen"][gen]["gen_status"] = 1
#     end
# end

for branch in keys(staticData["branch"])
    staticData["branch"][branch]["rate_a"] = staticData["branch"][branch]["rate_a"] * 5
    staticData["branch"][branch]["b_r"] = 0
end

for gen in keys(staticData["gen"])
    staticData["gen"][gen]["pmin"] = 0
end

old_result = solve_opf(staticData, DCPPowerModel, Ipopt.Optimizer)
total_load = sum(staticData["load"][l]["pd"] for l in keys(staticData["load"]))

#create a duplicate powermodels case where all solar generators are enabled
# staticData_projectedSolar = staticData 
# for gen in keys(staticData_projectedSolar["gen"])
#     if staticData["genfuel"][gen]["col_1"] == "solar"
#         staticData_projectedSolar["gen"][gen]["gen_status"] = 1
#     end
# end

#USE THIS FOR LOOP IF DEMAND IS TOO LOW
# for g in keys(staticData["gen"]) #MAKE MIN GEN SUPER 
#      staticData["gen"][g]["pmin"] = 0
# end

data = PowerModels.replicate(staticData, 24) # this replicate function creates duplicate data for 24 hours
#data_projectedSolar = PowerModels.replicate(staticData_projectedSolar, 24) #create a projected solar 24-hr profile as well

# Read the excel file
xf = XLSX.readxlsx("src/demand_profile.xlsx")
#println("SHEETS: ", XLSX.sheetnames(xf))
sheet = xf["months"] #access a specific sheet
DEMAND_data = XLSX.getdata(sheet) # a 26x12 Matrix{Any}
xf = XLSX.readxlsx("src/solar_profile.xlsx")
sheet = xf["months"]
SOLAR_data = XLSX.getdata(sheet) # a 26x12 Matrix{Any}
result = solve_mp_opf_ramp(data, DCPPowerModel, Ipopt.Optimizer, multinetwork=true) #solve multiperiod opf

total_load = sum(staticData["load"][l]["pd"] for l in keys(staticData["load"]))
#old_result = solve_opf(staticData, DCPPowerModel, Ipopt.Optimizer)

global opf_results_costPerDay = [] #cost per one day of each month
global opf_results_costPerMonth = [] #cost per month 
#global opf_results_cost_MONTHLY = 0.0
global opf_results_cost_TOTAL = 0.0

global thermal_gen = []
global opf_results_pgThermal = [] #(month, pg_daily, pg_monthly)
global opf_results_pgThermal_MONTHLY = 0.0 #temp variable used to find total monthly pg Thermal
global opf_results_pgThermal_TOTAL = 0.0 #total pg across 1 year (365 days, 12 months)


global total_pd, total_qd, total_pg, total_qg = 0.0, 0.0, 0.0, 0.0 #total demand/generation for a year
global pd_monthly, qd_monthly, pg_monthly_solar, qg_monthly_solar = 0.0, 0.0, 0.0, 0.0 #monthly demand/generation, temp variable



function whatMonth(number)
    months = [(1, "JAN", 31), (2, "FEB", 28), (3, "MAR", 31), (4, "APR", 30), (5, "MAY", 31), (6, "JUN", 30), (7, "JUL", 31), (8, "AUG", 31), (9, "SEP", 30), (10, "OCT", 31), (11, "NOV", 30), (12, "DEC", 31)]
    if number in 1:12
        return(months[number])
    else
        error("Invalid month number: $number")
    end
end

# ITERATE THROUGH ALL 24 HOURS (iterates through 24 NETWORKS that rep 24 hrs, and 24 rows of demand_data.xlsx that rep 24 hrs)
for month in 1:12
    global opf_results_cost_MONTHLY, opf_results_pgThermal_MONTHLY = 0.0, 0.0
    #global pd_monthly, qd_monthly, pg_monthly, qg_monthly = 0.0, 0.0, 0.0, 0.0 #temporary pd/qd to add to the total demand during each iteration
    for hour in 1:24 #same as.... for hour in keys(data["nw"]) 
        scale_demand = DEMAND_data[hour, month]
        for load in keys(data["nw"][string(hour)]["load"]) #Gets all load elements in each network
            data["nw"][string(hour)]["load"][load]["pd"] = staticData["load"][load]["pd"] * scale_demand
            data["nw"][string(hour)]["load"][load]["qd"] = staticData["load"][load]["qd"] * scale_demand
            #global pd_monthly += float(data["nw"][string(hour)]["load"][load]["pd"]) #sum up pd for every bus at each hour
            #global qd_monthly += float(data["nw"][string(hour)]["load"][load]["qd"]) #sum up qd for every bus at each hour
        end

        scale_generation = SOLAR_data[hour, month]
        for generator in keys(data["nw"][string(hour)]["gen"]) ## you have to change this to just the solar generation indices
            if (staticData["genfuel"][generator]["col_1"] == "solar") && (staticData["gen"][generator]["gen_status"] == 1) #check for active solar only
                data["nw"][string(hour)]["gen"][generator]["pg"] = staticData["gen"][generator]["pmax"] * scale_generation
                data["nw"][string(hour)]["gen"][generator]["qg"] = staticData["gen"][generator]["qmax"] * scale_generation
                #global pg_monthly_solar += float(data["nw"][string(hour)]["gen"][generator]["pg"])
                #global qg_monthly_solar += float(data["nw"][string(hour)]["gen"][generator]["qg"])
            end

            # #duplicate the above if statement actions for the projected solar profile as well
            # if (staticData_projectedSolar["genfuel"][generator]["col_1"] == "solar") 
            #     data_projectedSolar["nw"][string(hour)]["gen"][generator]["pg"] = staticData_projectedSolar["gen"][generator]["pmax"] * scale_generation
            #     data_projectedSolar["nw"][string(hour)]["gen"][generator]["qg"] = staticData_projectedSolar["gen"][generator]["qmax"] * scale_generation
            # end

            if (staticData["genfuel"][generator]["col_1"] == "ng" && !(string(generator) in thermal_gen))
                push!(thermal_gen, string(generator)) #make list of all thermal generators
            end 
        end
    end

    result = solve_mp_opf_ramp(data, DCPPowerModel, Ipopt.Optimizer, multinetwork=true) #solve OPF for one day of the month
    
    for hr in 1:24
        for gen in keys(result["solution"]["nw"][string(hr)]["gen"])
            if string(gen) in thermal_gen #if it is a thermal generator
                global opf_results_pgThermal_MONTHLY += float(result["solution"]["nw"][string(hr)]["gen"][string(gen)]["pg"]) #find total generation in MW for 1 day in the month
            end
        end
    end

    days_inMonth = whatMonth(month) #how many days in each month (28, 30, 31)
    push!(opf_results_costPerDay, (month, float(result["objective"]))) #cost per day (24 hours for 1 day)
    push!(opf_results_costPerMonth, (month, (float(result["objective"]) * float(days_inMonth[3])))) #cost per month (24 hours per day, for the number of days in the month)
    global opf_results_cost_TOTAL += (float(result["objective"]) * float(days_inMonth[3])) #total/yearly cost (365 days)
    push!(opf_results_pgThermal, (month, float(opf_results_pgThermal_MONTHLY), float(opf_results_pgThermal_MONTHLY * float(days_inMonth[3]))))
    global opf_results_pgThermal_TOTAL += float(opf_results_pgThermal_MONTHLY * float(days_inMonth[3]))
end

#println("TOTAL COST PER DAY (month, daily cost): ", opf_results_costPerDay)
#println("TOTAL COST PER MONTH (month, monthly cost): ", opf_results_costPerMonth)
println("TOTAL YEARLY COST: ", opf_results_cost_TOTAL)
println("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
#println("TOTAL THERMAL GENERATION (month, daily, monthly): ", opf_results_pgThermal)
println("TOTAL YEARLY THERMAL GENERATION: ", opf_results_pgThermal_TOTAL)


# """
# ## Vary the load demand for each of the 24 hours - Hadley 
# scale = 1 ## this is the scale factor for the load demand
# for hour in keys(data["nw"]) #DELETE THIS, IS JUST all network instances (1 to 24)
#     for key in keys(data["nw"][hour]["load"]) # keys(data["nw"][hour]["load"]): Gets all load elements in each network.
#         #print(data["nw"][hour]["load"][key]["pd"])
#         data["nw"][hour]["load"][key]["pd"] = data["nw"][hour]["load"][key]["pd"] * scale ## the scale number depends on the profile choose; currently set to 1
#         data["nw"][hour]["load"][key]["qd"] = data["nw"][hourn]["load"][key]["qd"] * scale
#     end
# end
# """

# """
# ## Vary the solar generation for each of the 24 hours - Tejaswi
# scale = 1 ## this is the scale factor for the solar generation
# for nw in keys(data["nw"])
#     for key in keys(data["nw"][nw]["gen"]) ## you have to change this to just the solar generation indices
#         data["nw"][nw]["gen"][key]["pg"] = data["nw"][nw]["gen"][key]["pg"] * scale ## the scale number depends on the profile choose
#         data["nw"][nw]["gen"][key]["qg"] = data["nw"][nw]["gen"][key]["qg"] * scale
#     end
# end

# ## Solve OPF repeatedly for each of the 24 hours
# result = solve_mp_opf_ramp(data, ACPPowerModel, Ipopt.Optimizer, multinetwork=true)

# ## Play with the results - Karen
# ## Investigate changes in output for current VS projeccted solar installations
# println("Total cost")
# println("Total loss")
# println("Total solar generation")
# println("Total load demand")

# """


#TASKS
# 1) for 365 days (12 months), find objective (sum of cost for every day in year)
# 2) find total generation (MW) from all thermal plants across the 365 days / year. use this to find 
    # emissions per year (based on a MW to tons of CO2 emissions conversion)
# 3) repeat 1-2 for scenario 2 (change status of last 5 solar panels to 1)

# vector of costs / emissions for each month
