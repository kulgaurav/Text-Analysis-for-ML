data <- read.csv("PCAData.csv", header = T, sep = ";")

library(psych)
library(GPArotation)

data <- data[complete.cases(data),]

data_corr <- cor(data)
