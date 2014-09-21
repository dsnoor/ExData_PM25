# *********************************************************************************
# Project       : Project Assignment 2 of Coursera class 'Exploratory Data Analysis'
#                 from John Hopkins.
# Author        : Noor Ahmed
# Created Date  : Sep 17, 2014
# Script Name   : GetData.R
# Purpose       : This script downloads the source files from the internet(using
#                URL and save and unzip the downloaded files in subdirectory namely 
#                 "data" under current working directory.
# *********************************************************************************

# Data Files    : The data for this assignment are available from the course web 
#                site as a single zip file [29MB] at: 
#                "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
#                The zip file contains two files:
#                    1) Source_Classification_Code.rds
#                    2) summarySCC_PM25.rds

    # Download the data file to current working directory, if not exist 
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
    filePath <- "./data/exdata%2Fdata%2FNEI_data.zip"

    # create subdirectory for storing data, if not exists
    if (!file.exists("data")) 
        {
            dir.create("data")
        }
    # create files in subdirectory, if not exists
    if (!file.exists(filePath)) 
        {
            # downloading the file
            download.file(fileUrl, destfile = filePath) 
         
            # capture date downloaded for future reference
            dateDownloaded <- date()    
            dateDownloaded
    
            # unzip the file into "data" subdirectory
            unzip(filePath, exdir="./data")
        }
    
# *********************************************************************************