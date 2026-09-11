# This is the R script to download the data for the individual assignment for week 3 (Justin)

data_url <- paste0("https://raw.githubusercontent.com/hannesdatta/course-dprep/refs/heads/main/material/project/coaching_2_data/watch_events.csv")
data_folder <- "src/week_3_individual_justin/data/raw"
file_path <- paste0(data_folder, "/tiktok_watch_events.csv")

# Create the folder if it doesn't exist
if (!dir.exists(data_folder)) {
  dir.create(data_folder, recursive = TRUE)
  cat("Created directory:", data_folder, "\n")}

  # Download the file if it doesn't exist
if (!file.exists(file_path)) {
  download.file(url = data_url, destfile = file_path)
  cat("File downloaded successfully to:", file_path, "\n")
} else {
  cat("File already exists at:", file_path, "\n")}

# create new folder to store ggsaves
plot_folder <- "src/week_3_individual_justin/plots"

if (!dir.exists(plot_folder)) {
  dir.create(plot_folder, recursive = TRUE)
  cat("Created directory:", plot_folder, "\n")}



