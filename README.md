# TikTok Group project Team 3
This repository contains the group project for the Data Preparation course. 
The project uses TikTok data to practice downloading, preparing, summarizing, and analyzing data.
This project contains both the team project and the individual assignments.

## Contributors
- Justin Huijnen (SNR: 2116456)
- Judith van Hemert (SNR: 2191989)

## Installation and dependencies
This project requires:
- R
- Quarto
- R package 'ggplot2'
- R package 'tidyverse'
- R package 'dplyr'

Packages can be installed in R using:

```r
instal.packages("ggplot2", "tidy verse", "dplyr")
```

## Project structure
- data/ - Contains raw data files
- documentation - Contains AI.md (Information about AI usage in the project) and video_view_summary.qmd (Provides a quick summary of the dataset)
- src - Contains summary.qmd.
- scripts - Provides the download_data.R folder that is meant to download the data
- .gitignore - Specifies that the data/ folder does not need to be uploaded to GitHub

## How to use the project
- First, download the data using the download_data.R file in the scripts folder
- Perform a first summary using the video_view_summary.qmd file in the documentation folder


