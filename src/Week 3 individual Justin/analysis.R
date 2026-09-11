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

# 2. Proportion of actions per creator

# Summary of action counts by creator (to get an overview)
action_by_creator <- data %>% group_by(creator_id, action) %>% summarize(count = n(), .groups = 'drop')
action_by_creator

# Calculate proportion per creator
action_by_creator <- action_by_creator %>% group_by(creator_id) %>% mutate(proportion = count / sum(count))

# Create stacked bar plot
ggplot(action_by_creator, aes(x = creator_id, y = proportion, fill = action)) +
  geom_bar(stat = 'identity') +
  labs(title = "Proportion of actions per creator", subtitle = "What proportion of videos leads to each action type",
   x = "Creator ID", y = "Proportion of users", fill = "Action Type") +
  scale_fill_manual(name = "Action type", values = c("red", "steelblue", "darkgreen", "yellow"), labels = c("Exit app", "Skip halfway the video", "Skip immediately", "Watch full video")) +
  theme_minimal()
ggsave("src/Week 3 individual Justin/plots/Actions_by_creators_tiktok.png", width=7,height=4)

# 3. Average watch time by creator
creator_avg <- data %>% group_by(creator_id) %>% summarize(avg_watch_seconds = mean(watch_seconds, na.rm = TRUE))

ggplot(creator_avg, aes(x = creator_id, y = avg_watch_seconds)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Average Watch Time by Creator", x = "Creator ID", y = "Average watch time")
ggsave("src/Week 3 individual Justin/plots/Average_watch_time.png", width=7,height=4)
