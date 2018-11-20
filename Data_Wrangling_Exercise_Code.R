library(tidyr)
library(dplyr)
library(readr)

Data <- read_csv("titanic_original.csv")

Data$embarked <- replace(Data$embarked, is.na(Data$embarked), "S")

Data$age <- replace(Data$age, is.na(Data$age), mean(Data$age, na.rm = TRUE))

Data$boat <- replace(Data$boat, is.na(Data$boat), "None")

has_cabin_number <- replace(Data$cabin, is.na(Data$cabin), 0)
has_cabin_number <- replace(has_cabin_number, has_cabin_number != 0, 1)
Data$has_cabin_number <- has_cabin_number

write.csv(Data, file = "titanic_clean.csv")