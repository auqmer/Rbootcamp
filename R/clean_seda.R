#**************************************************************************
# Title: clean_seda.R
# Author: William Murrah
# Description:
# Created: Wednesday, 02 October 2019
# R version: R version 3.6.1 (2019-07-05)
# Directory: C:/Users/wmm0017/Projects/QMER/Rbootcamp
#**************************************************************************
# packages used -----------------------------------------------------------
  
library(car)
library(psych)
library(ggplot2)

# Import data.
seda <- read.csv("data/seda.csv", header = TRUE)

seda$grade <- factor(seda$grade, labels = 3:8)

# Remove rows with missing countryid.
seda <- seda[!is.na(seda$countyid), ]

# Visualize data


# Summarize data

summary(seda)

describe(seda, fast = TRUE)



with(seda, 
     hist(achv, col = "skyblue"))

describeBy(seda$mfg, seda$grade, fast = TRUE)

describeBy(seda$achv, seda$grade, fast = TRUE)

(mfgagg <- aggregate(mfg ~ grade, data = seda, FUN = mean))
(achvagg <- aggregate(achv ~ grade, data = seda, FUN = mean))

# plot gaps.
plot(mfgagg, main = "Score Gaps in mfg")
plot(achvagg, main = "Score Gaps in Achievement")
