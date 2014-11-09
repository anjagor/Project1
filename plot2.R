podatki <- read.csv("data.txt", sep=";", na.strings="?")
novi_podatki = podatki[podatki$Date=="1/2/2007" | podatki$Date=="2/2/2007",]
png(file = "plot2.png")
plot(novi_podatki$Global_active_power, xaxt = "n", main = "", xlab="", ylab= "Global Active Power (kilowatts)", type="l")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()

