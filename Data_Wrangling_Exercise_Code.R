library(tidyr)
library(dplyr)
library(readr)

Data <- read_csv("titanic_original.csv")

Data$embarked <- replace(Data$embarked, is.na(Data$embarked), "S")