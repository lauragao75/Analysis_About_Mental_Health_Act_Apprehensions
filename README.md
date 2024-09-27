# Analysis of Mental Health Act Apprehensions in Toronto

This repository contains the code and data analysis for a comprehensive study of Mental Health Act (MHA) apprehensions in Toronto from 2014 to 2023.

## Project Structure

- **data/**: Contains the raw and cleaned datasets used in the analysis.
- **scripts/**: R scripts for data simulation, downloading, cleaning, and testing.
  - `00-simulate_data.R`: Simulates the dataset used for analysis.
  - `01-download_data.R`: Downloads the actual dataset from Open Data Toronto.
  - `02-data_cleaning.R`: Cleans and processes the raw dataset.
  - `03-test_data.R`: Tests the integrity and consistency of the cleaned dataset.
- **paper/**: Contains the final report, including the Quarto/RMarkdown file (`paper.qmd`) and the PDF version.
- **other/**: Contains relevant details about LLM chat interactions, and sketches.

## File Size Restrictions

Please note that the raw and cleaned data files are large, and GitHub may not be able to display them directly. To view or download these files, please clone the repository and access the files locally:
```bash
git clone https://github.com/lauragao75/Analysis_About_Mental_Health_Act_Apprehensions

## Statement on LLM usage

Parts of this project, including sections of the code were assisted by ChatGPT. All outputs were thoroughly reviewed and edited to ensure they met the standards and goals of the research.

The entire chat history from interactions with ChatGPT can be found in `other/llm_usage/usage.txt` for transparency and documentation.
