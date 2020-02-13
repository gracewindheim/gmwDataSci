# Assignment 3


## Only if you don't have the package installed
#source("https://neuroconductor.org/neurocLite.R")
#neuro_install("MRIcloudT1volumetrics")
require(devtools)
devtools::install_github("bcaffo/MRIcloudT1volumetrics")

library(magrittr); library(dplyr); library(MRIcloudT1volumetrics) 
## Change this to where the data directory is
roiDir = "/cloud/prdoject/testRepo/hw2temp/"
fileList = dir(roiDir)
fullPath = paste(roiDir, fileList[1], sep = "")
dat = readSubject(fullPath)
length(dat)

dat = subject2df(dat)
dat = addSubjectICV(dat)

# Intracranial volume of level 1 type 1 volumes = 1378295

## QUESTION 2 YEAR PLOT
library(ggplot2)
classdat = read.csv("/cloud/project/testRepo/classInterests.txt", sep="\t", header=TRUE, stringsAsFactor=FALSE)
y = data.frame(table(classdat$Year))
colnames(y) = c("Year", "Count")
y = data.frame(y)

## QUESTION 2 PROGRAM PLOT


yearp = ggplot(data=y, aes(x=Year, y=Count)) + geom_bar(stat="identity")