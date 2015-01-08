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
    
    
    d1 <- d[grepl("^[12]/2/2007$", d$Date),]
    
    d1$DateTime <- strptime(paste(d1$Date, d1$Time), "%e/%m/%Y%t%H:%M:%S")
    
    d1
}

