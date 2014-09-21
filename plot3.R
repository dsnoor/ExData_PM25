# *********************************************************************************
# Project       : Project Assignment 2 of Coursera class 'Exploratory Data Analysis'
#                 from John Hopkins.
# Author        : Noor Ahmed
# Created Date  : Sep 18 2014
# Script Name   : plot3.R
# Purpose       : This script is to plot an answer to question #3 
# ---------------------------------------------------------------------------------
# Question 3:
# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) 
# variable, a) which of these four sources have seen decreases in emissions from 1999-2008 
# for Baltimore City? b) Which have seen increases in emissions from 1999-2008? 
# Use the ggplot2 plotting system to make a plot to answer this question.
# ---------------------------------------------------------------------------------

    # setwd("E:/GitHubProjects/ExData_PM25/")

    # load libraries
    library(plyr)  
    library(ggplot2)
 
    # Read the data file
    ## This first line will likely take a few seconds. Be patient!
    NEI <- readRDS("./data/summarySCC_PM25.rds")
    SCC <- readRDS("./data/Source_Classification_Code.rds")
    
    # subset Baltimore, Maryland '24510
    BaltimoreCity <- subset(NEI, fips == "24510")
 
    typePM25ByYear <- ddply(BaltimoreCity, .(year, type), function(x) sum(x$Emissions))
    colnames(typePM25ByYear)[3] <- "Emissions"
    
    # plotting the graph
    png("plot3.png")     
    
    qplot(year, Emissions, data=typePM25ByYear, color=type, geom="line") +
            ggtitle(expression("Baltimore City" ~ PM[2.5] ~ "Emissions by Source Type and Year")) +
            xlab("Year") +
            ylab(expression("Total" ~ PM[2.5] ~ "Emissions (tons)"))
    
    dev.off()
# *********************************************************************************