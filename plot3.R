f <- file.path(getwd(),"household_power_consumption.txt")
data <- read.table(f,sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?",skip = 66637, nrows = 2880)
head(data)
str(data)

day <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S")

#dev.new()
png("plot3.png", width=480, height=480)
with(data, plot(day,V7, type="n", xlab = "", ylab = "Energy Sub Metering"))
with(data, points(day,V7, col="black", type="l"))
with(data, points(day,V8, col="red", type="l"))
with(data, points(day,V9, col="blue", type="l"))
legend("topright", lty=1, col = c("black", "red", "blue"), 
       legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))
dev.off()