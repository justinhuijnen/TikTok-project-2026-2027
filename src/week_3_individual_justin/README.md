# Individual assignment week 3
This folder in the repository of the group project is about the second assignment. This assignment is individual and has nothing to do with the rest of the repository

## Contributors
- Justin Huijnen (SNR: 2116456)

## Installation and dependencies
This project requires:
- R
- R package 'tidyverse'
- make (optional)

## Project structure
- data/raw: Contains the raw data and is created with the R script download_data.R in this folder
- download_week3_data.R: Contains the R script to download the data needed for this assignment. It also creates a folder called plots, here are all plots stored if you run the analysis.R script
- analysis.R: It cleans the data first. Then, this file makes 4 plots with the use of ggplot2 and ggsave
- makefile: Makes automation easy. Simply run make in the terminal and all steps are automated

## How to use the project
- First, download the data using the download_week3_data.R file in this folder
- Second, run the analysis.R script, which is also in this folder
- Or: Run make in the terminal and everything is done

## Expected output
- 4 beautiful graphs are created and stored on your computer in the plots folder

## Description of plots
- Actionspread_tiktok.png: Shows how many times an action was taken - exit the app, skip halfway the video, skip immediately, or watched the full video
- Actions_by_creator_tiktok.png: Shows what proportion of users took which action, but grouped by creator. So we can see that some creators did better than others. I included the same color scheme to make it easy
- Average_watch_time.png: Shows the average watch time per creator. This one is a bit easier
- Total_tiktok_time.png: Shows the total time on tiktok per user in a bar chart