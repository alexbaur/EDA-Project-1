## Plot 4

## For this plot we will have to set up a grid for the graphs which
## will be inserted starting in the upper left-hand corner and move
## to the right, then lower left and finishing on the lower right.

## Open png graphics device
png(filename = "plot4.png", width = 480, height = 480)

## Establish plot layout
par(mfrow = c(2,2))

## Upper left plot - same as in plot2.R
plot(powerfinal$Global_active_power ~ powerfinal$Datum, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")

## Upper right plot
plot(powerfinal$Voltage ~ powerfinal$Datum, ylab = "Voltage", xlab = "datetime", type = "l")

## Bottom left plot - same as in plot3.R
plot(powerfinal$Sub_metering_1 ~ powerfinal$Datum, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(powerfinal$Sub_metering_2 ~ powerfinal$Datum, col = "red")
lines(powerfinal$Sub_metering_3 ~ powerfinal$Datum, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, lwd = 2)

## Bottom right plot
plot(powerfinal$Global_reactive_power ~ powerfinal$Datum, ylab = "Global_reactive_power", xlab = "datetime", type = "l")

## Close up
dev.off()
