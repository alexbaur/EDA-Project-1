## Plot 2

## Need to combine the dates and times for this plot

datum <- paste(as.Date(powerfinal$Date), powerfinal$Time)
powerfinal$Datum <- as.POSIXct(datum)

## Plot the graph in a png file
png(filename = "plot2.png", width = 480, height = 480)
plot(powerfinal$Global_active_power ~ powerfinal$Datum, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()