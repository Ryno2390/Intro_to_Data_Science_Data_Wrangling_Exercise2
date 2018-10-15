library(tidyr)
library(dplyr)
library(readr)

Data <- read_csv("titanic_original.csv")

Data$embarked <- replace(Data$embarked, is.na(Data$embarked), "S")

Data$age <- replace(Data$age, is.na(Data$age), mean(Data$age, na.rm = TRUE))

Data$boat <- replace(Data$boat, is.na(Data$boat), "None")