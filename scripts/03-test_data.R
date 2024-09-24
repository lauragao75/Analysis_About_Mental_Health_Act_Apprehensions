#### Preamble ####
# Purpose: Clean the mental health apprehension dataset
# Author: Zien Gao
# Date: 24 September 2024
# Contact: lauragao75@gmail.com


#### Workspace setup ####
library(tidyverse)
library(here)

#### Load data ####
test_data <- read_csv(
  file = here("data/cleaned_data/cleaned_dataset.csv"),
  show_col_types = FALSE
)

#### Start testing ####

# Test if "occ_year" is a numeric value, not a character
is.numeric(test_data$occ_year)

# Test if "occ_hour" is between 0 and 23
all(test_data$occ_hour >= 0 & test_data$occ_hour <= 23)

# Test if "age_cohort" contains all expected categories
expected_age_groups <- c("18 to 24", "25 to 34", "35 to 44", "45 to 54", "55 to 64", "65 and above")
all(unique(test_data$age_cohort) %in% expected_age_groups)

# Test if "premises_type" contains the expected categories
expected_premises_types <- c("House", "Apartment", "Outside", "Commercial", "Institution", "Other", "Street")
all(unique(test_data$premises_type) %in% expected_premises_types)

# Test for no missing values in key columns
sum(is.na(test_data$occ_year)) == 0
sum(is.na(test_data$occ_hour)) == 0
sum(is.na(test_data$age_cohort)) == 0
sum(is.na(test_data$premises_type)) == 0
