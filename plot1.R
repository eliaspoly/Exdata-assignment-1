f <- file.path(getwd(),"household_power_consumption.txt")
data <- read.table(f,sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?",skip = 66637, nrows = 2880)
head(data)
str(data)

#dev.new()
png("plot1.png", width=480, height=480)
hist(data$V3, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
