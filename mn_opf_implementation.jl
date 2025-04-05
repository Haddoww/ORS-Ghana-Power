using PowerModels
using Ipopt
using JuMP
using Gurobi
using Plots
include("multiperiod_opf.jl")

# Load the data
data = PowerModels.parse_file("GhanaGrid.m")

## Comment this line out to move between scenarios 1 and 2. See the PECI paper.
for g in keys(data["gen"])
    data["gen"][g]["gen_status"] = 1
end

# # Create the model
pm = instantiate_model(data, DCPPowerModel, PowerModels.build_opf)
result = optimize_model!(pm, optimizer=Gurobi.Optimizer)

## Replicate the data for 24 hours
original_data = PowerModels.replicate(data, 24) ## this replicate function creates duplicate data for 24 hours
result = solve_mp_opf_ramp(original_data, DCPPowerModel, Gurobi.Optimizer, multinetwork=true)

load_scale = [0.8126652737010159, 0.7720320100159651, 0.7449431675592647, 0.7449431675592647, 0.758487588787615, 0.8262096949293662, 0.9210206435278182, 1.0564648558113208, 1.1106425407247218, 1.124186961953072, 1.1106425407247218, 1.0970981194963716, 1.0835536982680214, 1.0564648558113208, 1.0429204345829706, 1.01583159212627, 1.0022871708979197, 1.0293760133546204, 1.218997910551524, 1.2460867530082245, 1.2054534893231739, 1.0970981194963716, 0.9481094859845185, 0.8126652737010159]
solar_scale = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.109268185, 0.30828386700000004, 0.45076517200000005, 0.556129519, 0.614310516, 0.6374286060000001, 0.607012578, 0.525752335, 0.39692124900000003, 0.233257752, 0.055518222, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

for nw in 1:24
    for key in keys(original_data["nw"]["$nw"]["load"])
        original_data["nw"]["$nw"]["load"][key]["pd"] = data["load"][key]["pd"] * load_scale[nw]
        original_data["nw"]["$nw"]["load"][key]["qd"] = data["load"][key]["qd"] * load_scale[nw]
    end
    for key in keys(original_data["nw"]["$nw"]["gen"]) 
        if original_data["nw"]["$nw"]["genfuel"][key]["col_1"] == "solar" ## this allows you to identify just the solar generators.
            original_data["nw"]["$nw"]["gen"][key]["pmax"] = data["gen"][key]["pmax"] * solar_scale[nw]
            original_data["nw"]["$nw"]["gen"][key]["qmax"] = data["gen"][key]["qmax"] * solar_scale[nw]
        end 
    end
end

result = solve_mp_opf_ramp(original_data, DCPPowerModel, Gurobi.Optimizer, multinetwork=true)
cost = result["objective"]
println("The daily cost is $cost")
yearly_cost = cost * 365
println("The yearly cost is $yearly_cost")

carbon_emissions = []
for generator in keys(data["gen"])
    for nw in keys(result["solution"]["nw"])
        if data["genfuel"][generator]["col_1"] == "ng"
            push!(carbon_emissions, result["solution"]["nw"][nw]["gen"][generator]["pg"])
        end
    end
end
carbon_gen = sum(carbon_emissions)
println("The total generation from natural gas is $carbon_gen MW")
carbon_emissions = sum(carbon_emissions) * 100 * 500 * 24
println("The total carbon emissions are $carbon_emissions kgCO2e")
