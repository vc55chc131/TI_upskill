setwd("C:/Users/Vincent Chang/Documents/TI_upskill")

# wrangle.R
# Day 3: Wrangle penguins data with tidyverse

# 0. Ensure we’re in the right folder
# (You can also set this via Session → Set Working Directory → To Source File Location)
# setwd("C:/Users/Vincent Chang/Documents/TI_upskill")

# 1. Load tidyverse
library(tidyverse)

# 2. Read the data
df <- read_csv("data.csv")
glimpse(df)

# 3. Filter: keep only adults (body_mass_g > 3000)
df_adults <- df %>% 
  filter(body_mass_g > 3000)

# 4. Compute a new column: bill length / bill depth
df_adults <- df_adults %>%
  mutate(bill_ratio = bill_length_mm / bill_depth_mm)

# 5. Group by species and summarise
summary <- df_adults %>%
  group_by(species) %>%
  summarise(
    avg_bill_ratio = mean(bill_ratio, na.rm = TRUE),
    count = n()
  )

print(summary)

# 6. Write out the summary CSV
write_csv(summary, "summary.csv")
