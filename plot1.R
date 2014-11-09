podatki <- read.csv("data.txt", sep=";", na.strings="?")
novi_podatki = podatki[podatki$Date=="1/2/2007" | podatki$Date=="2/2/2007",]
png(file = "plot1.png")
hist(novi_podatki$Global_active_power, col="red", main = "Global active power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()