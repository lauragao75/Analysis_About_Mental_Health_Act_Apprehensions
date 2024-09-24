#### Preamble ####
# Purpose: Download mental health apprehension data from opendatatoronto 
# Author: Zien Gao
# Date: 24 September 2024
# Contact: lauragao75@gmail.com

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
# Get package information using the package name or ID
package <- show_package("mental-health-apprehensions") 

# Get all resources associated with this package
resources <- list_package_resources("mental-health-apprehensions")

# Load the data using the specific resource ID
data <- get_resource(resource = "4a92540b-6504-4b25-827d-4511b8b9f3d9")

# View the first few rows of the dataset
print(head(data))

#### Save data ####
# Save the data to "data/raw_data/unedited_data.csv"
write_csv(data, "data/raw_data/unedited_data.csv")



         
