## READ IN DATA ####
source("scripts/lesson2_cleaning.R")

## LOAD PACKAGES ####
library(ggplot2)

## ORGANIZE DATA ####
data_figs = data_clean %>%
  mutate(sex = factor(sex, levels=c("F", "M"), labels=c("female", "male")))

## MAKE FIGURES ####

# Histogram of dependent variable (number of 'Michael's) - 10 based log transform
name.plot = ggplot(data_figs, aes(x = prop)) +
  geom_histogram()

# pdf("figures/name.pdf")
name.plot
# dev.off()

# Histogram of dependent variable (number of 'Michael's) - e based log transform
name_loge.plot = ggplot(data_figs, aes(x = prop_loge)) +
  geom_histogram()
# pdf("figures/name_loge.pdf")
name_loge.plot
# dev.off()

# Histogram of dependent variable (number of 'Michael's) - 10 based log transform
name_log10.plot = ggplot(data_figs, aes(x = prop_log10)) +
  geom_histogram()

# pdf("figures/name_log10.pdf")
name_log10.plot
# dev.off()

# Proportion of 'Michael's by year (continuous predictor)
year.plot = ggplot(data_figs, aes(x = year, y = prop_log10)) +
  geom_point() +
  geom_smooth(method="lm")

# pdf("figures/year.pdf")
year.plot
# dev.off()

# Proportion of 'Michael's by sex (categorical predictor)
sex.plot = ggplot(data_figs, aes(x = sex, y = prop_log10)) +
  geom_boxplot()

# pdf("figures/sex.pdf")
sex.plot
# dev.off()
