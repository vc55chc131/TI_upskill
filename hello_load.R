notepad hello_load.R
# hello_load.R
# Day 2: Hello world and CSV load in R

# Print hello
print("Hello, world!")

# Load tidyverse
library(tidyverse)

# Read the CSV
df <- read_csv("sample.csv")

# Show first rows and summary
print(head(df))
print(summary(df))
