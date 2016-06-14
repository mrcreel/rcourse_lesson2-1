## LOAD PACKAGES ####
library(dplyr)

data <- read.table("./data/rcourse_lesson2_data.txt", header=T, sep="\t")

dim(data)

## CLEAN DATA ####
data_clean <- data %>%
  filter(name == "Michael") %>%
  mutate(name = factor(name)) %>%
  filter(year > 1900) %>%
  filter(year <= 2000) %>%
  mutate(prop_loge = log(prop)) %>%
  mutate(prop_log10 = log10(prop))

xtabs(~name, data_clean)
