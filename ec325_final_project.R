# Dominic Tanelli
# Prof. Kropp
# ENVST 325
# 19 December 2024

# EC325 Final Project

# Install and Load Packages
# install.packages(c("ggplot2", "scales", "dplyr"))
library(ggplot2)
library(scales)
library(dplyr)

# Wind Energy Data (September 2021)
wind_energy <- read.csv("/cloud/project/Sep2021_Wind_Energy.csv")

# Question 1: What regions within the contiguous United States exhibit the highest average potential wind energy based on kilowatt hours per square kilometer per day?

# Split Wind Energy Data into 18 Regions based on HUC_12 ranges
# Region 1 (New England) [HUC_12 range: 010100020101 to 011000060405]
new_england_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 010100020101 & HUC_12 <= 011000060405)

# Region 2 (Mid Atlantic) [HUC_12 range: 020200010101 to 020802080304]
mid_atlantic_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 020200010101 & HUC_12 <= 020802080304)

# Region 3 (South Atlantic Gulf) [HUC_12 range: 030101010101 to 031800050606]
south_atlantic_gulf_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 030101010101 & HUC_12 <= 031800050606)

# Region 4 (Great Lakes) [HUC_12 range: 040101010101 to 041505000602]
great_lakes_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 040101010101 & HUC_12 <= 041505000602)

# Region 5 (Ohio) [HUC_12 range: 050100010101 to 051402060704]
ohio_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 050100010101 & HUC_12 <= 051402060704)

# Region 6 (Tennessee) [HUC_12 range: 060101010101 to 060400060505]
tennessee_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 060101010101 & HUC_12 <= 060400060505)

# Region 7 (Upper Mississippi) [HUC_12 range: 070101010101 to 071402040910]
upper_mississippi_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 070101010101 & HUC_12 <= 071402040910)

# Region 8 (Lower Mississippi) [HUC_12 range: 080101000101 to 080903020900]
lower_mississippi_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 080101000101 & HUC_12 <= 080903020900)

# Region 9 (Souris Red Rainy) [HUC_12 range: 090100020101 to 090400020203]
souris_red_rainy_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 090100020101 & HUC_12 <= 090400020203)

# Region 10 (Missouri) [HUC_12 range: 100200010101 to 103002000804]
missouri_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 100200010101 & HUC_12 <= 103002000804)

# Region 11 (Arkansas White Red) [HUC_12 range: 110100010101 to 111403070209]
arkansas_white_red_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 110100010101 & HUC_12 <= 111403070209)

# Region 12 (Texas Gulf) [HUC_12 range: 120100010101 to 121102081000]
texas_gulf_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 120100010101 & HUC_12 <= 121102081000)

# Region 13 (Rio Grande) [HUC_12 range: 130100010101 to 130900020000]
rio_grande_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 130100010101 & HUC_12 <= 130900020000)

# Region 14 (Upper Colorado) [HUC_12 range: 140100010101 to 140802050807]
upper_colorado_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 140100010101 & HUC_12 <= 140802050807)

# Region 15 (Lower Colorado) [HUC_12 range: 150100010101 to 150803030104]
lower_colorado_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 150100010101 & HUC_12 <= 150803030104)

# Region 16 (Great Basin) [HUC_12 range: 160101010101 to 160600151803]
great_basin_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 160101010101 & HUC_12 <= 160600151803)

# Region 17 (Pacific Northwest) [HUC_12 range: 170101010201 to 171200090804]
pacific_northwest_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 170101010201 & HUC_12 <= 171200090804)

# Region 18 (California) [HUC_12 range: 180101010101 to 181002041400]
california_wind_energy <- wind_energy %>%
  filter(HUC_12 >= 180101010101 & HUC_12 <= 181002041400)

# Calculate kWh/km²/day averages for each of the 18 regions
# Region 1: New England
new_england_avg_wind_energy <- mean(new_england_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 2: Mid Atlantic
mid_atlantic_avg_wind_energy <- mean(mid_atlantic_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 3: South Atlantic Gulf
south_atlantic_gulf_avg_wind_energy <- mean(south_atlantic_gulf_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 4: Great Lakes
great_lakes_avg_wind_energy <- mean(great_lakes_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 5: Ohio
ohio_avg_wind_energy <- mean(ohio_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 6: Tennessee
tennessee_avg_wind_energy <- mean(tennessee_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 7: Upper Mississippi
upper_mississippi_avg_wind_energy <- mean(upper_mississippi_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 8: Lower Mississippi
lower_mississippi_avg_wind_energy <- mean(lower_mississippi_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 9: Souris Red Rainy
souris_red_rainy_avg_wind_energy <- mean(souris_red_rainy_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 10: Missouri
missouri_avg_wind_energy <- mean(missouri_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 11: Arkansas White Red
arkansas_white_red_avg_wind_energy <- mean(arkansas_white_red_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 12: Texas Gulf
texas_gulf_avg_wind_energy <- mean(texas_gulf_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 13: Rio Grande
rio_grande_avg_wind_energy <- mean(rio_grande_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 14: Upper Colorado
upper_colorado_avg_wind_energy <- mean(upper_colorado_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 15: Lower Colorado
lower_colorado_avg_wind_energy <- mean(lower_colorado_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 16: Great Basin
great_basin_avg_wind_energy <- mean(great_basin_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 17: Pacific Northwest
pacific_northwest_avg_wind_energy <- mean(pacific_northwest_wind_energy$kWhkm2day, na.rm = TRUE)

# Region 18: California
california_avg_wind_energy <- mean(california_wind_energy$kWhkm2day, na.rm = TRUE)

# Data Frame with kWh/km²/day averages
wind_energy_means <- data.frame(
  Region = c("Missouri", "Souris Red Rainy", "Upper Mississippi", "Arkansas White Red", "Rio Grande", "Texas Gulf",
             "Great Lakes", "Pacific Northwest", "California", "New England", "Upper Colorado", "Ohio",
             "Great Basin", "Mid Atlantic", "Lower Colorado", "Tennessee", "South Atlantic Gulf", "Lower Mississippi"),
  Average_kWh_per_km2_day = c(missouri_avg_wind_energy, souris_red_rainy_avg_wind_energy, upper_mississippi_avg_wind_energy, 
                              arkansas_white_red_avg_wind_energy, rio_grande_avg_wind_energy, texas_gulf_avg_wind_energy, 
                              great_lakes_avg_wind_energy, pacific_northwest_avg_wind_energy, california_avg_wind_energy,
                              new_england_avg_wind_energy, upper_colorado_avg_wind_energy, ohio_avg_wind_energy, 
                              great_basin_avg_wind_energy, mid_atlantic_avg_wind_energy, lower_colorado_avg_wind_energy, 
                              tennessee_avg_wind_energy, south_atlantic_gulf_avg_wind_energy, lower_mississippi_avg_wind_energy))

# List of 18 unique colors
unique_colors <- c(
  "#FF6347", "#4682B4", "#32CD32", "#FFD700", "#8A2BE2", "#DC143C", "#00CED1", "#FF1493", 
  "#8B4513", "#C71585", "#20B2AA", "#D2691E", "#FF4500", "#2E8B57", "#A52A2A", "#B22222", 
  "#5F9EA0", "#FF8C00"
)

# Bar Chart Visualization of wind_energy_means
ggplot(wind_energy_means, aes(x = reorder(Region, -Average_kWh_per_km2_day), 
                              y = Average_kWh_per_km2_day, fill = Region)) +
  geom_bar(stat = "identity") + 
  labs(title = "Average Wind Energy Potential by Region (kWh/km²/day)", 
       x = "Region", 
       y = "Average kWh per km² per day") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_manual(values = unique_colors) + 
  guides(fill = "none") +   
  scale_y_continuous(labels = scales::comma_format())

# Print wind_energy_means
print(wind_energy_means)

# Question 2: Does average precipitation correlate with patterns of average wind energy in the United States?

# Average Precipitation (September 2021)
avg_precip <- read.csv("/cloud/project/AvgPrecip_NHDPv2_WBD.csv")

# Change MeanPrecip strings into numeric values
avg_precip$MeanPrecip <- as.numeric(avg_precip$MeanPrecip)

# Merge wind energy and average precipitation data based on HUC_12 code
wind_precip_data <- merge(wind_energy, avg_precip, by = "HUC_12")

# Removes rows with missing AvgWindEnergy or MeanPrecip values
wind_precip_data <- wind_precip_data %>%
  filter(!is.na(AvgWindEnergy) & !is.na(MeanPrecip))

# Calculates correlation between average wind energy and average precipitation in the United States
wind_precip_correlation <- cor(wind_precip_data$AvgWindEnergy, wind_precip_data$MeanPrecip, use = "complete.obs")

# Scatter plot of Average Wind Energy vs. Average Precipitation
ggplot(wind_precip_data, aes(x = MeanPrecip, y = AvgWindEnergy)) + 
  geom_point(color = "blue", alpha = 0.6) + 
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Average Wind Energy vs. Average Precipitation (United States)", 
       x = "Average Precipitation (in)", y = "Average Wind Energy (mWh)") + 
  theme_minimal()

# Prints correlation between average wind energy and average precipitation in the United States
paste("Correlation between wind energy and precipitation (United States):", wind_precip_correlation)

# Question 3: What HUC_12 regions have the highest correlation between average wind energy and average precipitation?

# Calculate correlations by HUC_12
correlations_by_HUC12 <- wind_precip_data %>%
  group_by(HUC_12) %>%
  summarise(correlation = cor(MeanPrecip, AvgWindEnergy, use = "complete.obs", method = "pearson")) %>%
  ungroup()
