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

