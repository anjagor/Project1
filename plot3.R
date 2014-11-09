podatki <- read.csv("data.txt", sep=";", na.strings="?")
novi_podatki = podatki[podatki$Date=="1/2/2007" | podatki$Date=="2/2/2007",]
png(file = "plot3.png")
plot(novi_podatki$Sub_metering_1, xaxt = "n", main = "", xlab="", ylab= "Energy sub Metering", type="l")
points(novi_podatki$Sub_metering_2, col="red", type="l")
points(novi_podatki$Sub_metering_3, col="blue", type="l")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"), legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=c(2.5,2.5), col=c("black", "red", "blue")))
dev.off()

