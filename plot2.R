source("read.R")

drawPlot <- function() {
    d <- readData()
    oldmar <- par("mar")
    par(mar = c(3.1, 4.1, 2.1, 2.1))
    with(d, 
         plot(DateTime, Global_active_power, 
              type="l", 
              ylab="Global active power (kilowatts)", 
              xlab = NA))
    par(mar = oldmar)
}

png("plot2.png", 480, 480)
drawPlot()
dev.off()
