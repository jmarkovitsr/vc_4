library(tidyverse)
library(here)


# Load data
data <- read_csv(here("data", "iq_data.csv"))


# Create plot, store as 'plot'

p1 <- data %>%
  ggplot(., aes(x = iq, y = score)) +
  geom_point(pch = 21, size = 2)  +
  theme_grey(base_size = 18, base_family = 'Times') +
  geom_smooth()
