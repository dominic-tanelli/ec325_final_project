# Dominic Tanelli
# Prof. Kropp
# ENVST 325
# 19 December 2024

# EC325 Final Project
# Install and Load Packages
# install.packages(c("dplyr", "lubridate", "ggplot2"))
# library(dplyr)
# library(lubridate)
# library(ggplot2)

# Wind Energy (August 2020 and September 2021)
aug2020 <- read.csv("/cloud/project/Aug2020_Wind_Energy.csv")
sep2021 <- read.csv("/cloud/project/Sep2021_Wind_Energy.csv")

# Split Data (aug2020 and sep2021) into 18 Regions based on HUC_12 ranges
# Region 01 (New England) [HUC_12 range: 010100020101 to 011000060405]
# Filter for August 2020 data in New England
new_england_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 010100020101 & HUC_12 <= 011000060405) %>%
  select(kWhkm2day)

# Filter for September 2021 data in New England
new_england_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 010100020101 & HUC_12 <= 011000060405) %>%
  select(kWhkm2day)

# Region 02 (Mid Atlantic) [HUC_12 range: 020200010101 to 020802080304]
# Filter for August 2020 data in Mid Atlantic
mid_atlantic_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 020200010101 & HUC_12 <= 020802080304) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Mid Atlantic
mid_atlantic_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 020200010101 & HUC_12 <= 020802080304) %>%
  select(kWhkm2day)

# Region 03 (South Atlantic Gulf) [HUC_12 range: 030101010101 to 031800050606]
# Filter for August 2020 data in South Atlantic Gulf
south_atlantic_gulf_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 030101010101 & HUC_12 <= 031800050606) %>%
  select(kWhkm2day)

# Filter for September 2021 data in South Atlantic Gulf
south_atlantic_gulf_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 030101010101 & HUC_12 <= 031800050606) %>%
  select(kWhkm2day)

# Region 04 (Great Lakes) [HUC_12 range: 040101010101 to 041505000602]
# Filter for August 2020 data in Great Lakes
great_lakes_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 040101010101 & HUC_12 <= 041505000602) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Great Lakes
great_lakes_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 040101010101 & HUC_12 <= 041505000602) %>%
  select(kWhkm2day)

# Region 05 (Ohio) [HUC_12 range: 050100010101 to 051402060704]
# Filter for August 2020 data in Ohio
ohio_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 050100010101 & HUC_12 <= 051402060704) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Ohio
ohio_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 050100010101 & HUC_12 <= 051402060704) %>%
  select(kWhkm2day)

# Region 06 (Tennessee) [HUC_12 range: 060101010101 to 060400060505]
# Filter for August 2020 data in Tennessee
tennessee_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 060101010101 & HUC_12 <= 060400060505) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Tennessee
tennessee_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 060101010101 & HUC_12 <= 060400060505) %>%
  select(kWhkm2day)

# Region 07 (Upper Mississippi) [HUC_12 range: 070101010101 to 071402040910]
# Filter for August 2020 data in Upper Mississippi
upper_mississippi_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 070101010101 & HUC_12 <= 071402040910) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Upper Mississippi
upper_mississippi_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 070101010101 & HUC_12 <= 071402040910) %>%
  select(kWhkm2day)

# Region 08 (Lower Mississippi) [HUC_12 range: 080101000101 to 080903020900]
# Filter for August 2020 data in Lower Mississippi
lower_mississippi_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 080101000101 & HUC_12 <= 080903020900) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Lower Mississippi
lower_mississippi_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 080101000101 & HUC_12 <= 080903020900) %>%
  select(kWhkm2day)

# Region 09 (Souris Red Rainy) [HUC_12 range: 090100020101 to 090400020203]
# Filter for August 2020 data in Souris Red Rainy
souris_red_rainy_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 090100020101 & HUC_12 <= 090400020203) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Souris Red Rainy
souris_red_rainy_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 090100020101 & HUC_12 <= 090400020203) %>%
  select(kWhkm2day)

# Region 10 (Missouri) [HUC_12 range: 100200010101 to 103002000804]
# Filter for August 2020 data in Missouri
missouri_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 100200010101 & HUC_12 <= 103002000804) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Missouri
missouri_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 100200010101 & HUC_12 <= 103002000804) %>%
  select(kWhkm2day)

# Region 11 (Arkansas White Red) [HUC_12 range: 110100010101 to 111403070209]
# Filter for August 2020 data in Arkansas White Red
arkansas_white_red_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 110100010101 & HUC_12 <= 111403070209) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Arkansas White Red
arkansas_white_red_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 110100010101 & HUC_12 <= 111403070209) %>%
  select(kWhkm2day)

# Region 12 (Texas Gulf) [HUC_12 range: 120100010101 to 121102081000]
# Filter for August 2020 data in Texas Gulf
texas_gulf_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 120100010101 & HUC_12 <= 121102081000) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Texas Gulf
texas_gulf_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 120100010101 & HUC_12 <= 121102081000) %>%
  select(kWhkm2day) 

# Region 13 (Rio Grande) [HUC_12 range: 130100010101 to 130900020000]
# Filter for August 2020 data in Rio Grande
rio_grande_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 130100010101 & HUC_12 <= 130900020000) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Rio Grande
rio_grande_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 130100010101 & HUC_12 <= 130900020000) %>%
  select(kWhkm2day)

# Region 14 (Upper Colorado) [HUC_12 range: 140100010101 to 140802050807]
# Filter for August 2020 data in Upper Colorado
upper_colorado_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 140100010101 & HUC_12 <= 140802050807) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Upper Colorado
upper_colorado_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 140100010101 & HUC_12 <= 140802050807) %>%
  select(kWhkm2day)

# Region 15 (Lower Colorado) [HUC_12 range: 150100010101 to 150803030104]
# Filter for August 2020 data in Lower Colorado
lower_colorado_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 150100010101 & HUC_12 <= 150803030104) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Lower Colorado
lower_colorado_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 150100010101 & HUC_12 <= 150803030104) %>%
  select(kWhkm2day)

# Region 16 (Great Basin) [HUC_12 range: 160101010101 to 160600151803]
# Filter for August 2020 data in Great Basin
great_basin_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 160101010101 & HUC_12 <= 160600151803) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Great Basin
great_basin_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 160101010101 & HUC_12 <= 160600151803) %>%
  select(kWhkm2day)

# Region 17 (Pacific Northwest) [HUC_12 range: 170101010201 to 171200090804]
# Filter for August 2020 data in Pacific Northwest
pacific_northwest_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 170101010201 & HUC_12 <= 171200090804) %>%
  select(kWhkm2day)

# Filter for September 2021 data in Pacific Northwest
pacific_northwest_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 170101010201 & HUC_12 <= 171200090804) %>%
  select(kWhkm2day)

# Region 18 (California) [HUC_12 range: 180101010101 to 181002041400]
# Filter for August 2020 data in California
california_aug2020 <- aug2020 %>%
  filter(HUC_12 >= 180101010101 & HUC_12 <= 181002041400) %>%
  select(kWhkm2day)

# Filter for September 2021 data in California
california_sep2021 <- sep2021 %>%
  filter(HUC_12 >= 180101010101 & HUC_12 <= 181002041400) %>%
  select(kWhkm2day)
