using PowerModels
using Ipopt
using JuMP
using PowerPlots

# Load the data
data = PowerModels.parse_file("data/ghana_test_case.m")
# data = PowerModels.parse_file("data/hawaii.m")
powerplot(data, bus_size=50, branch_size =2, gen_size = 50, load_size = 50; width=300, height=500)


for key in keys(data["gen"])
    data["gen"][key]["pmin"] = 0
end

for key in keys(data["gen"])
    data["gen"][key]["qmin"] = 10 * data["gen"][key]["qmin"]
    data["gen"][key]["qmax"] = 10 * data["gen"][key]["qmax"]
end

# Create the model
pm = instantiate_model(data, ACPPowerModel, PowerModels.build_opf)
result = optimize_model!(pm, optimizer=Ipopt.Optimizer)

# Print the results
PowerModels.print_summary(result["solution"])

# Ensure total generation is greater than total load
total_gen = sum(data["gen"][g]["pg"] for g in keys(data["gen"]))
total_load = sum(data["load"][l]["pd"] for l in keys(data["load"]))
if total_gen >= total_load
    println("Total generation is greater than total load")
else
    println("Total generation is less than total load")
end

# Relax the branch flow limits
for key in keys(data["branch"])
    data["branch"][key]["rate_a"] = 15 * data["branch"][key]["rate_a"]
end

