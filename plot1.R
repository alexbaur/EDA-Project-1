## Plot 1

##Initiate png file
png(filename = "plot1.png", width = 480, height = 480)

## Plot
hist(powerfinal$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

## Turn off png graphics device
dev.off()