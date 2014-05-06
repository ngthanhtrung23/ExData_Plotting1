# Read the data. The file data.txt contains only the data from 1/2/2007 
# and 2/2/2007
data <- read.csv("data.txt", header = TRUE, sep = ";")
str(data)

# Create the plot
plot(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),
     data$Global_active_power,
     ylab="Global Active Power (kilowatts)",
     xlab="",
     pch='.'
)
lines(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"),data$Global_active_power)

# Save the plot to file
dev.copy(png, file="plot2.png")
dev.off()
