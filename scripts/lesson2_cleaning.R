## LOAD PACKAGES ####
library(dplyr)

data <- read.table("./data/rcourse_lesson2_data.txt", header=T, sep="\t")

dim(data)

## CLEAN DATA ####
data_clean <- data %>%
  filter(name == "Michael") %>%
  mutate(name = factor(name)) %>%
  filter(year > 1900) %>%
  filter(year <= 2000)

xtabs(~name, data_clean)
