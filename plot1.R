# *********************************************************************************
# Project       : Project Assignment 2 of Coursera class 'Exploratory Data Analysis'
#                 from John Hopkins.
# Author        : Noor Ahmed
# Created Date  : Sep 17, 2014
# Script Name   : plot1.R
# Purpose       : This script is to plot an answer to question #1 
# ---------------------------------------------------------------------------------
# Question 1:
# Have total emissions from PM2.5 decreased in the United States from 1999 to
# 2008? Using the base plotting system, make a plot showing the total PM2.5
# emission from all sources for each of the years 1999, 2002, 2005, and 2008.
# ---------------------------------------------------------------------------------

    # setwd("E:/GitHubProjects/ExData_PM25/")

    # Read the data file
    ## This first line will likely take a few seconds. Be patient!
    NEI <- readRDS("./data/summarySCC_PM25.rds")
    SCC <- readRDS("./data/Source_Classification_Code.rds")

    totalPM25ByYear <- tapply(NEI$Emissions, NEI$year, sum)

    # plotting the graph
    png("plot1.png")

    plot(names(totalPM25ByYear), totalPM25ByYear, type="l",
     xlab="Year", ylab=expression("Total" ~ PM[2.5] ~ "Emissions (tons)"),
     main=expression("Total US" ~ PM[2.5] ~ "Emissions by Year"))

    dev.off()

# *********************************************************************************