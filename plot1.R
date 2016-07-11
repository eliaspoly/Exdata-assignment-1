file <- file.path(getwd(),"household_power_consumption.txt")
data <- read.table(file,sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?", skip = 1)
head(data)
str(data)
sub <- data[data$V1 %in% c("1/2/2007","2/2/2007") ,]

#dev.new()
png("plot1.png", width=480, height=480)
hist(sub$V3, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
