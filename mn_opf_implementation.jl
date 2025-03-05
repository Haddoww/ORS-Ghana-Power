using PowerModels
using Ipopt
using JuMP
using Gurobi
include("multiperiod_opf.jl")

# Load the data
data = PowerModels.parse_file("GhanaGrid.m")
data = PowerModels.replicate(data, 24) ## this replicate function creates duplicate data for 24 hours

## Vary the load demand for each of the 24 hours - Hadley 
scale = 1 ## this is the scale factor for the load demand
for nw in keys(data["nw"])
    for key in keys(data["nw"][nw]["load"])
        data["nw"][nw]["load"][key]["pd"] = data["nw"][nw]["load"][key]["pd"] * scale ## the scale number depends on the profile choose; currently set to 1
        data["nw"][nw]["load"][key]["qd"] = data["nw"][nw]["load"][key]["qd"] * scale
    end
end

## Vary the solar generation for each of the 24 hours - Tejaswi
scale = 1 ## this is the scale factor for the solar generation
for nw in keys(data["nw"])
    for key in keys(data["nw"][nw]["gen"]) ## you have to change this to just the solar generation indices
        data["nw"][nw]["gen"][key]["pg"] = data["nw"][nw]["gen"][key]["pg"] * scale ## the scale number depends on the profile choose
        data["nw"][nw]["gen"][key]["qg"] = data["nw"][nw]["gen"][key]["qg"] * scale
    end
end

## Solve OPF repeatedly for each of the 24 hours
result = solve_mp_opf_ramp(data, ACPPowerModel, Ipopt.Optimizer, multinetwork=true)

## Play with the results - Karen
## Investigate changes in output for current VS projeccted solar installations
println("Total cost")
println("Total loss")
println("Total solar generation")
println("Total load demand")

