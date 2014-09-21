# *********************************************************************************
# Project       : Project Assignment 2 of Coursera class 'Exploratory Data Analysis'
#                 from John Hopkins.
# Author        : Noor Ahmed
# Created Date  : Sep 17, 2014
# Script Name   : plot2.R
# Purpose       : This script is to plot an answer to question #2 
# ---------------------------------------------------------------------------------
# Question 2:
# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
# (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot 
# answering this question.
# ---------------------------------------------------------------------------------
    
    # setwd("E:/GitHubProjects/ExData_PM25/")
    
    # Read the data file
    ## This first line will likely take a few seconds. Be patient!
    NEI <- readRDS("./data/summarySCC_PM25.rds")
    SCC <- readRDS("./data/Source_Classification_Code.rds")
    

    # subset Baltimore, Maryland '24510    
    BaltimoreCity <- subset(NEI, fips == "24510")
    
    totalPM25ByYear <- tapply(BaltimoreCity$Emissions, BaltimoreCity$year, sum)
    
    # plotting the graph
    png("plot2.png") # Set the graphics device to png
   
    plot(names(totalPM25ByYear), totalPM25ByYear, type="l",
         xlab="Year", ylab=expression("Total" ~ PM[2.5] ~ "Emissions (tons)"),
         main=expression("Total Baltimore City" ~ PM[2.5] ~ "Emissions by Year"))
    
    dev.off()
        
# *********************************************************************************