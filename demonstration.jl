using PowerModels
using Ipopt
using JuMP
using PowerPlots
using Plots

# Load the data
data = PowerModels.parse_file("data/GhanaGRID.m")
powerplot(data, bus_size=50, branch_size =2, gen_size = 50, load_size = 50; width=300, height=500)

# Create the model
pm = instantiate_model(data, DCPPowerModel, PowerModels.build_opf)
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

# Plot a histogram of the voltage angles and the branch flow percentages
branch_percentage = [abs((result["solution"]["branch"][key]["pt"]) * 100) / data["branch"][key]["rate_a"] for key in keys(data["branch"])]
histogram(branch_percentage, bins=50, xlabel="Line loading (%)", ylabel="Number of lines", legend=false)
indices = findall(x -> x > 80, branch_percentage)
