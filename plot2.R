f <- file.path(getwd(),"household_power_consumption.txt")
data <- read.table(f,sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?",skip = 66637, nrows = 2880)
head(data)
str(data)

day <- strptime(paste(data$V1, data$V2, sep=" "), "%d/%m/%Y %H:%M:%S")

#dev.new()
png("plot2.png", width=480, height=480)
with(data, plot(day,V3, type="l", xlab = "", ylab = "Global Active Power(kilowatts)"))
dev.off()

