# Assignment 3


## Only if you don't have the package installed
#source("https://neuroconductor.org/neurocLite.R")
#neuro_install("MRIcloudT1volumetrics")
require(devtools)
devtools::install_github("bcaffo/MRIcloudT1volumetrics")

library(magrittr); library(dplyr); library(MRIcloudT1volumetrics) 
## Change this to where the data directory is
roiDir = "/cloud/project/testRepo/hw2temp/"
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
yplot = ggplot(data=y, aes(x=Year, y=Count)) + geom_bar(stat="identity")

## QUESTION 2 PROGRAM PLOT
p = data.frame(table(classdat$Program))
colnames(p) = c("Program", "Count")
pplot = ggplot(data=p, aes(x=Program, y=Count)) + geom_bar(stat="identity")

## QUESTION 3
mos = data.frame(classdat)
x = table(mos$Year, mos$Program)
mosaicplot(x, main = "Class Data by Year and Program", xlab = "Year", ylab = "Program")

## QUESTION 4
genedat = read.csv("/cloud/project/testRepo/GSE5859_exprs.csv", sep=",")
g = data.frame(genedat)
# how to know which column/row is the mean?

## QUESTION 5

healthdat = read.csv("/cloud/project/testRepo/healthcare-spending.csv", header = TRUE, sep = ",", quote = "\"", skip = 2, stringsAsFactors = FALSE)
healthdat = healthdat[-c(1, 53:61),] #Without US total spending

h = data.frame(healthdat)
colnames(h) = c("Location", "1991":"2014")

library(tidyr)
hg = gather(h, Year, Spending, "1991":"2014") 

library(ggplot2)
hplot = ggplot(hg, aes(Year, Spending, colour=Location)) + geom_point()
# to include US total spending data or not?

## QUESTION 6
library(dplyr)
final = hg %>% group_by(Location) %>% summarise(AvgSpending = mean(Spending))

#barplot
splot = ggplot(data=final, aes(x=Location, y=AvgSpending)) + geom_bar(stat="identity")

#to change rownames ?
v = c(state.abb) %>% c(v[1:8], "DC", v[9:50])
rownames(final) = v

