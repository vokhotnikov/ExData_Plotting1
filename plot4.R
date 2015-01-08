source("read.R")

drawPlot <- function() {
    d <- readData()
    oldmar <- par("mar")
    par(mar = c(4.1, 4.1, 1.1, 2.1))
    par(mfrow = c (2, 2))
    
    # topleft plot
    with(d, plot(DateTime, Global_active_power,
                 type = "l",
                 xlab = NA,
                 ylab = "Global Active Power"))
    
    # topright plot
    with(d, plot(DateTime, Voltage,
                 type = "l",
                 xlab = "datetime",
                 ylab = "Voltage"))
    
    # bottomleft plot
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
           lty = 1, bty = "n")
    
    # bottomright plot
    with(d, plot(DateTime, Global_reactive_power,
                 type = "l",
                 xlab = "datetime",
                 ylab = "Global Reactive Power"))
    
    par(mar = oldmar, mfrow = c(1, 1))
}

png("plot4.png", 480, 480)
drawPlot()
dev.off()


