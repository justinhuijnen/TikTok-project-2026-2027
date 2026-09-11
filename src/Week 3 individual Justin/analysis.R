# This is the R script to clean the data
# It is time to inspect and analyze this watch data: 
# look at the spread of actions, 
# how watch time relates to video length, 
# and normalise the timestamps so they are usable.
library(tidyverse)

# Read the data
data <- read.csv("src/Week 3 individual Justin/data/raw/tiktok_watch_events.csv")

# Basic summary
summary(data)
dim(data)
str(data)
names(data)

# Delete missing values:
data <- na.omit(data)

# 1. Visualize Action type:
table(data$action)
ggplot(data=data,aes(x=action, fill=action)) + 
  geom_bar() + 
  theme_minimal() + 
  labs(title = "Distribution of user interactions", subtitle = "Count of each action type in watch data", x="Action type", y= "Count") +
  scale_fill_manual(name = "Action type", values = c("red", "steelblue", "darkgreen", "yellow"), labels = c("Exit app", "Skip halfway the video", "Skip immediately", "Watch full video")) + 
  theme(axis.text.x = element_blank())
ggsave("src/Week 3 individual Justin/plots/Actionspread_tiktok.png", width=7,height=4)

# 2. How does watch time relate to video length?
