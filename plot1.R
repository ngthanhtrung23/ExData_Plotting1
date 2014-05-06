# Read the data
data <- read.csv("data.txt", header = TRUE, sep = ";")
str(data)

# Create the histogram
hist(data$Global_active_power, 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red"
     )

# Save the plot to file
dev.copy(png, file="plot1.png")
dev.off()
