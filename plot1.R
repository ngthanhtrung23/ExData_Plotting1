# Read the data. The file data.txt contains only the data from 1/2/2007 
# and 2/2/2007
data <- read.csv("data.txt", header = TRUE, sep = ";")

# Create the histogram
hist(data$Global_active_power, 
     main="Global Active Power",                # Histogram title
     xlab="Global Active Power (kilowatts)",    # x-axis label
     ylab="Frequency",                          # y-axis label
     col="red"                                  # Fill the bars with red color
)

# Save the plot to file
dev.copy(png, file="plot1.png")
dev.off()
