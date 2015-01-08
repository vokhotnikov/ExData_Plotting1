source("read.R")

drawPlot <- function() {
    d <- readData()
    oldmar <- par("mar")
    par(mar = c(3.1, 4.1, 2.1, 2.1))
    
    with(d, {
        plot(DateTime, Sub_metering_1, type = "n", 
             xlab = NA, ylab = "Energy sub metering")
        lines(DateTime, Sub_metering_1, col = "black")
        lines(DateTime, Sub_metering_2, col = "red")
        lines(DateTime, Sub_metering_3, col = "blue")
    })
    legend("topright", 
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col = c("black", "red", "blue"), 
           lty = 1)
    
    par(mar = oldmar)
}

png("plot3.png", 480, 480)
drawPlot()
dev.off()

