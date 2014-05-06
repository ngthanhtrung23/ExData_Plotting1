# Read the data. The file data.txt contains only the data from 1/2/2007 
# and 2/2/2007
data <- read.csv("data.txt", header = TRUE, sep = ";")
str(data)

# Initialize the time series
time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# Only need to plot the line with highest value (Sub_metering_1), to fix
# the scale & labels in x-axis & y-axis. The other two lines are taken care
# of using function lines below
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

# Draw legend
legend(
  "topright",
  col=c("black", "red", "blue"),
  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  pch="___"
)

# Save the plot to file
dev.copy(png, file="plot3.png")
dev.off()
