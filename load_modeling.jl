using DataFrames
using Statistics
using Plots
using CSV

# Define the DataFrame
microgrid_demand = DataFrame(
    Hour = 1:24,
    KE_1 = [18.6, 10.6, 7.35, 6.48, 11.8, 19.4, 20.8, 28.5, 33.3, 34.7, 36.8, 37.2, 39.0, 46.5, 48.0, 46.2, 50.7, 98.0, 189, 189, 156, 108, 62.8, 33.3],
    KE_2 = [169, 138, 120, 109, 134, 192, 184, 225, 297, 365, 398, 399, 376, 351, 346, 330, 343, 578, 973, 988, 812, 563, 343, 222],
    KE_3 = [95.5, 54.5, 37.8, 30.1, 34.2, 57.1, 57.6, 44.8, 41.0, 46.0, 53.1, 57.8, 66.2, 76.1, 86.2, 98.6, 124, 219, 487, 604, 576, 455, 302, 176],
    KE_4 = [29.2, 18.7, 15.0, 16.2, 24.2, 36.4, 39.3, 39.6, 44.3, 48.4, 49.1, 54.7, 54.8, 65.3, 68.2, 77.1, 82.4, 102, 215, 306, 280, 208, 121, 57.8],
    KE_5 = [4.2, 3.2, 3.1, 3.7, 7.8, 25.7, 45.2, 80.8, 128, 169, 194, 198, 196, 190, 184, 171, 153, 165, 235, 235, 167, 75.1, 23.3, 9.0],
    KE_6 = [17.5, 15.6, 14.4, 14.2, 15.6, 18.6, 22.3, 31.9, 43.4, 52.2, 66.1, 73.8, 74.1, 64.6, 55.6, 46.1, 39.6, 46.5, 103, 130, 107, 65.0, 35.7, 22.8],
    KE_7 = [21.4, 14.9, 11.3, 8.7, 7.9, 9.8, 9.3, 8.7, 8.2, 7.9, 8.1, 8.3, 8.7, 9.6, 11.1, 13.6, 19.2, 40.2, 73.2, 80.7, 74.5, 58.6, 41.9, 29.6],
    TZ_1 = [12.5, 10.9, 11.7, 10.9, 14.1, 26.4, 26.2, 18.3, 33.1, 23.6, 25.4, 24.0, 25.6, 30.5, 31.1, 41.0, 39.0, 34.4, 148, 223, 173, 93.5, 38.2, 19.9],
    TZ_2 = [156, 135, 124, 122, 127, 140, 166, 209, 240, 273, 315, 330, 332, 335, 343, 361, 357, 365, 623, 797, 786, 584, 344, 209],
    TZ_3 = [58.7, 53.8, 50.8, 50.5, 57.5, 68.1, 83.8, 102, 119, 185, 287, 310, 298, 235, 189, 171, 168, 154, 288, 372, 352, 231, 135, 77.4],
    TZ_4 = [609, 483, 436, 399, 376, 423, 809, 1210, 1430, 1670, 1790, 1830, 1800, 1800, 1910, 2090, 2080, 2020, 3310, 3890, 3780, 3040, 1890, 992]
)

# Calculate the sum of each hour
microgrid_demand.sum .= sum(Matrix(microgrid_demand[:, 2:end]), dims=2)

# Calculate the mean of the average values
mean_average = mean(microgrid_demand.sum)

# Create a new column that divides each element of the average column by the mean
microgrid_demand.average = microgrid_demand.sum ./ mean_average

plot(microgrid_demand.Hour, microgrid_demand.average, label="Average Demand", xlabel="Hour", ylabel="Average Demand (MW)", title="Average Demand per Hour", lw=2)

# Define the average demand in GWh and peak demand for each month
average_monthly_demand = [2041.66, 1916.82, 2058.37, 2041.78, 2024.57, 1858.63, 
                            1847.38, 1850.81, 1839.47, 1990.25, 2010.59, 2098.18]

peak_monthly_demand = [3355.59, 3417.67, 3431.35, 3456.21, 3496.71, 3388.94, 
                     3217.86, 3269.21, 3267.38, 3381.59, 3494.28, 3545.27]

# Convert energy in GWh to MW
number_of_days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for i in 1:12
    average_monthly_demand[i] = (average_monthly_demand[i] * 1000) / (24 *number_of_days_per_month[i])
end

# Create the monthly demand profile
monthly_demand_profile = []
true_mean = mean(average_monthly_demand)
for i in 1:12
    max_scale = peak_monthly_demand[i] / true_mean
    display(max_scale)
    new_values = (microgrid_demand.average .* max_scale) ./ maximum(microgrid_demand.average)
    display(new_values)
    month_new_values = repeat(new_values, number_of_days_per_month[i])
    display(month_new_values)
    month_new_values_matrix = reshape(month_new_values, 24, number_of_days_per_month[i])
    display(month_new_values_matrix)
    append!(monthly_demand_profile, month_new_values_matrix)
end

## Resahpe the monthly demand profile and create a DataFrame
demand_profile = DataFrame()
demand_profile = DataFrame(reshape(monthly_demand_profile, 24, 365), :auto)
# Change column names to 1, 2, 3, ..., 24
rename!(demand_profile, Symbol.(1:365))

# Write the demand profile to a CSV file
CSV.write("demand_profile.csv", demand_profile)
plot(demand_profile[!, number_of_days_per_month[1]], label="January", xlabel="Hour", ylabel="Scaling Factor", title="Daily Demand Profile for different Months", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[2]], label="February", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[3]], label="March", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[4]], label="April", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[5]], label="May", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[6]], label="June", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[7]], label="July", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[8]], label="August", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[9]], label="September", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[10]], label="October", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[11]], label="November", lw=0.5)
plot!(demand_profile[!, number_of_days_per_month[12]], label="December", lw=0.5)
