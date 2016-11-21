library(plotly)
library(dplyr)
library(knitr)

# Setting the working directory
setwd("/Users/Pema/info498f/a6-mapping-shootings")

# Reading in the mass shooting data csv file
data <- read.csv("data/Mass-Shooting-Data.csv")

# A variable 'dead' for the total number of people killed in the shootings
dead <- sum(data$killed)

# A variable 'injured' for the total number of people injured in the shootings
injured <- sum(data$injured)

# Creates a new column 'total' in the data to show people affected by the shootings
data$total <- data$injured + data$killed

# Gets the most affected city which has the highest number of people affected
most_affected_city <- data %>% 
  group_by(city) %>% 
  summarise(sum = sum(total)) %>% 
  filter(sum == max(sum)) %>% 
  select(city)
 
# Gets the most affected state which has the highest number of people affected
most_affected_state <- data %>% 
  group_by(state) %>% 
  summarise(sum = sum(total)) %>% 
  filter(sum == max(sum)) %>% 
  select(state)

# Information table on how many people were affected in each state
info_table <- data %>% 
  group_by(state) %>% 
  summarise(Injured = sum(injured), Killed = sum(killed), Total_Casualty = sum(injured) + sum(killed))

data <- data %>% 
        mutate(total_casualty = injured + killed)

# Gets information about a selected city
selected_city <- "San Bernardino"
selected_injured <- data$injured[data$city == selected_city]
selected_killed <- data$killed[data$city == selected_city]
selected_date <- data$date[data$city == selected_city]
