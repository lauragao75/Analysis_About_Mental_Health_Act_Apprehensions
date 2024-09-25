#### Preamble ####
# Purpose: Clean the mental health apprehension dataset
# Author: Zien Gao
# Date: 24 September 2024
# Contact: lauragao75@gmail.com

#### Workspace setup ####
library(tidyverse)

#### Load the raw data ####
raw_data <- read_csv("data/raw_data/unedited_data.csv")

#### Clean, filter, and rename the data ####
cleaned_data <- raw_data %>%
  janitor::clean_names() %>%
  # Filter data for years between 2014 and 2024
  filter(occ_year >= 2014 & occ_year <= 2024) %>%
  # Select relevant columns
  select(occ_year, occ_hour, premises_type, age_cohort) %>%
  # Filter out missing and unrecorded values
  filter(!is.na(occ_year), !is.na(occ_hour), premises_type != "Not Recorded", age_cohort != "Not Recorded") %>%
  # Rename columns to formal names
  rename(
    Occurred_Year = occ_year,
    Occurred_Hour = occ_hour,
    Premises_Type = premises_type,
    Age_Cohort = age_cohort
  ) %>%
  # Make additional changes like cleaning values
  mutate(
    Occurred_Year = as.numeric(Occurred_Year),
    Occurred_Hour = as.numeric(Occurred_Hour),
    Premises_Type = str_to_title(Premises_Type),
    Age_Cohort = str_replace(Age_Cohort, "65\\+", "65 and above")
  )

#### Save the cleaned and renamed data ####
write_csv(cleaned_data, "data/cleaned_data/cleaned_dataset.csv")

