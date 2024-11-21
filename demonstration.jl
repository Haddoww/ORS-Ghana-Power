using PowerModels
using Ipopt
using JuMP
using PowerPlots
using PowerModelsAnalytics

# Load the data
data = PowerModels.parse_file("data/ghana_test_case.m")
# data = PowerModels.parse_file("data/hawaii.m")
powerplot(data)

# Create the model
pm = instantiate_model(data, DCPPowerModel, PowerModels.build_pf)
result = optimize_model!(pm, optimizer=Ipopt.Optimizer)

# Print the results
PowerModels.print_summary(result["solution"])

# Ensure total generation is greater than total load
total_gen = sum(data["gen"][g]["qmax"] for g in keys(data["gen"]))
total_load = sum(data["load"][l]["qd"] for l in keys(data["load"]))
if total_gen >= total_load
    println("Total generation is greater than total load")
else
    println("Total generation is less than total load")
end

# Relax the branch flow limits
for key in keys(data["branch"])
    data["branch"][key]["rate_a"] = 1.5 * data["branch"][key]["rate_a"]
end
