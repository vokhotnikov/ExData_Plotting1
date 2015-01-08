source("read.R")

drawPlot <- function() {
    d <- readData()
    hist(d$Global_active_power, 
         col = "red", 
         xlab = "Global Active Power (kilowatts)", 
         main = "Global Active Power")
}

savePlot <- function() {
    png("plot1.png", 480, 480)
    drawPlot()
    dev.off()
}