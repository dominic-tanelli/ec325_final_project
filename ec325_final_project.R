# Dominic Tanelli
# Prof. Kropp
# ENVST 325
# 19 December 2024

# EC325 Final Project

# Wind Energy (September 2021)
sep2021 <- read.csv("/cloud/project/Sep2021_Wind_Energy.csv")

# Split Wind Energy Data into 18 Regions based on HUC_12 ranges
# Region 1 (New England) [HUC_12 range: 010100020101 to 011000060405]
new_england <- sep2021 %>%
  filter(HUC_12 >= 010100020101 & HUC_12 <= 011000060405)

# Region 2 (Mid Atlantic) [HUC_12 range: 020200010101 to 020802080304]
mid_atlantic <- sep2021 %>%
  filter(HUC_12 >= 020200010101 & HUC_12 <= 020802080304)

# Region 3 (South Atlantic Gulf) [HUC_12 range: 030101010101 to 031800050606]
south_atlantic_gulf <- sep2021 %>%
  filter(HUC_12 >= 030101010101 & HUC_12 <= 031800050606)

# Region 4 (Great Lakes) [HUC_12 range: 040101010101 to 041505000602]
great_lakes <- sep2021 %>%
  filter(HUC_12 >= 040101010101 & HUC_12 <= 041505000602)

# Region 5 (Ohio) [HUC_12 range: 050100010101 to 051402060704]
ohio <- sep2021 %>%
  filter(HUC_12 >= 050100010101 & HUC_12 <= 051402060704)

# Region 6 (Tennessee) [HUC_12 range: 060101010101 to 060400060505]
tennessee <- sep2021 %>%
  filter(HUC_12 >= 060101010101 & HUC_12 <= 060400060505)

# Region 7 (Upper Mississippi) [HUC_12 range: 070101010101 to 071402040910]
upper_mississippi <- sep2021 %>%
  filter(HUC_12 >= 070101010101 & HUC_12 <= 071402040910)

# Region 8 (Lower Mississippi) [HUC_12 range: 080101000101 to 080903020900]
lower_mississippi <- sep2021 %>%
  filter(HUC_12 >= 080101000101 & HUC_12 <= 080903020900)

# Region 9 (Souris Red Rainy) [HUC_12 range: 090100020101 to 090400020203]
souris_red_rainy <- sep2021 %>%
  filter(HUC_12 >= 090100020101 & HUC_12 <= 090400020203)

# Region 10 (Missouri) [HUC_12 range: 100200010101 to 103002000804]
missouri <- sep2021 %>%
  filter(HUC_12 >= 100200010101 & HUC_12 <= 103002000804)

# Region 11 (Arkansas White Red) [HUC_12 range: 110100010101 to 111403070209]
arkansas_white_red <- sep2021 %>%
  filter(HUC_12 >= 110100010101 & HUC_12 <= 111403070209)

# Region 12 (Texas Gulf) [HUC_12 range: 120100010101 to 121102081000]
texas_gulf <- sep2021 %>%
  filter(HUC_12 >= 120100010101 & HUC_12 <= 121102081000)

# Region 13 (Rio Grande) [HUC_12 range: 130100010101 to 130900020000]
rio_grande <- sep2021 %>%
  filter(HUC_12 >= 130100010101 & HUC_12 <= 130900020000)

# Region 14 (Upper Colorado) [HUC_12 range: 140100010101 to 140802050807]
upper_colorado <- sep2021 %>%
  filter(HUC_12 >= 140100010101 & HUC_12 <= 140802050807)

# Region 15 (Lower Colorado) [HUC_12 range: 150100010101 to 150803030104]
lower_colorado <- sep2021 %>%
  filter(HUC_12 >= 150100010101 & HUC_12 <= 150803030104)

# Region 16 (Great Basin) [HUC_12 range: 160101010101 to 160600151803]
great_basin <- sep2021 %>%
  filter(HUC_12 >= 160101010101 & HUC_12 <= 160600151803)

# Region 17 (Pacific Northwest) [HUC_12 range: 170101010201 to 171200090804]
pacific_northwest <- sep2021 %>%
  filter(HUC_12 >= 170101010201 & HUC_12 <= 171200090804)

# Region 18 (California) [HUC_12 range: 180101010101 to 181002041400]
california <- sep2021 %>%
  filter(HUC_12 >= 180101010101 & HUC_12 <= 181002041400)
