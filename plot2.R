file <- file.path(getwd(),"household_power_consumption.txt")
data <- read.table(file,sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?", skip = 1)
head(data)
str(data)
sub <- data[data$V1 %in% c("1/2/2007","2/2/2007") ,]

day <- strptime(paste(sub$V1, sub$V2, sep=" "), "%d/%m/%Y %H:%M:%S")

#dev.new()
png("plot2.png", width=480, height=480)
with(sub, plot(day,V3, type="l", xlab = "", ylab = "Global Active Power(kilowatts)"))
dev.off()


