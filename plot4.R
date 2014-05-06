# Read the data. The file data.txt contains only the data from 1/2/2007 
# and 2/2/2007
data <- read.csv("data.txt", header = TRUE, sep = ";")
str(data)

# Split the drawing panel into 2*2
par(mfrow = c(2,2))

# Fist plot
plot(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),
     data$Global_active_power,
     ylab="Global Active Power",
     xlab="",
     pch='.'
)
lines(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),data$Global_active_power)

# Second plot
plot(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),
     data$Voltage,
     ylab="Voltage",
     xlab="datetime",
     pch='.'
)
lines(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),data$Voltage)

# Third plot
plot(
  time,
  data$Sub_metering_1,
  pch='.',
  ylab="Energy sub metering",
  xlab="",
  col=c("black", "red", "blue"),
)

lines(time, data$Sub_metering_1, col="black")
lines(time, data$Sub_metering_2, col="red")
lines(time, data$Sub_metering_3, col="blue")

legend(
  "topright",
  col=c("black", "red", "blue"),
  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  pch="___",
  lty=2,                    # Make the lines in legend longer
  box.col="white"           # Remove the box boundary
)

# Fourth plot
plot(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),
     data$Global_reactive_power,
     ylab="Global_reactive_power",
     xlab="datetime",
     pch='.'
)
lines(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),data$Global_reactive_power)

# Save the plot to file
dev.copy(png, file="plot4.png")
dev.off()
