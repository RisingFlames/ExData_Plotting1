library(datasets)
powerDF = read.table("household_power_consumption.txt", skip=66637, nrows=2880, sep=";")
featureLabelsVector = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
colnames(powerDF) = featureLabelsVector
hist(powerDF$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png, file = "plot1.png")
dev.off()
