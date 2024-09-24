#### Preamble ####
# Purpose: Simulates dataset about Mental Health Act Apprehensions
# Author: Zien Gao
# Date: 24 September 2024
# Contact: lauragao75@gmail.com


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(304)

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(304)

# Set the number of rows to simulate
number_of_rows <- 1000

# Simulate the required features
simulated_data <- tibble(
  occ_year = sample(2010:2024, number_of_rows, replace = TRUE),
  occ_hour = sample(0:23, number_of_rows, replace = TRUE),
  premises_type = sample(c("House", "Apartment", "Outside", "Commercial"), number_of_rows, replace = TRUE),
  age_cohort = sample(c("18 to 24", "25 to 34", "35 to 44", "45 to 54", "55 to 64", "65+"), number_of_rows, replace = TRUE)
)

#### Write the simulated data to a CSV file ####
write_csv(simulated_data, "data/simulated_data/simulated_dataset.csv")

