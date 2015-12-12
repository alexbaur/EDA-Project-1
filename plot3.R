## Plot 3

## Initiate png and plot

png(filename = "plot3.png", width = 480, height = 480)
plot(powerfinal$Sub_metering_1 ~ powerfinal$Datum, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(powerfinal$Sub_metering_2 ~ powerfinal$Datum, col = "red")
lines(powerfinal$Sub_metering_3 ~ powerfinal$Datum, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, lwd = 2)
dev.off()
