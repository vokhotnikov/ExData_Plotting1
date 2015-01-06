readData <- function() {
    zipFile <- "exdata-data-household_power_consumption.zip"
    dataFile <- "household_power_consumption.txt"    
    
    d <- read.table(unz(zipFile, dataFile), 
                    header = TRUE, 
                    sep = ";", 
                    stringsAsFactors = FALSE, 
                    na.strings = "?", 
                    comment.char = "",
                    colClasses = c(rep("character", 2), rep("numeric", 7)))
    
    d
}