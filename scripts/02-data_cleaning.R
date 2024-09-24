#### Preamble ####
# Purpose: Clean the mental health apprehension dataset
# Author: Zien Gao
# Date: 24 September 2024
# Contact: lauragao75@gmail.com

#### Workspace setup ####
library(tidyverse)
library(janitor)  # For cleaning column names

#### Clean data ####
# Load the raw dataset
raw_data <- read_csv("data/raw_data/unedited_data.csv")

# Clean and transform the dataset
cleaned_data <-
  raw_data |>
  janitor::clean_names() |>  # Standardize column names
  select(occ_year, occ_hour, premises_type, age_cohort) |>  # Select relevant columns
  filter(!is.na(occ_year),  # Filter out rows where `occ_year` is missing
         !is.na(occ_hour),  # Filter out rows where `occ_hour` is missing
         premises_type != "Unknown",  # Filter out rows with unknown premises type
         age_cohort != "Unknown") |>  # Filter out rows with unknown age cohort
  mutate(
    occ_year = as.numeric(occ_year),  # Convert `occ_year` to numeric
    occ_hour = as.numeric(occ_hour),  # Convert `occ_hour` to numeric
    premises_type = str_to_title(premises_type),  # Capitalize first letters of premises types
    age_cohort = str_replace(age_cohort, "65\\+", "65 and above")  # Standardize age cohort labels
  ) |>
  drop_na()  # Remove any rows with missing values

#### Save cleaned data ####
write_csv(cleaned_data, "data/cleaned_data/cleaned_dataset.csv")
