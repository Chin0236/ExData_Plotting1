a=read.csv("C:/Users/User/AppData/Local/Temp/household_power_consumption_FSFJUv",header=TRUE,sep=";")
b=subset(a,Date=="1/2/2007" | Date=="2/2/2007")
for (i in 1:dim(b)[1]) {
b[i,1]=format(as.Date(b[i,1], format="%d/%m/%Y"), "%Y-%m-%d")}
c=apply(b[3],2,as.numeric)
e=apply(b[7],2,as.numeric)
f=apply(b[8],2,as.numeric)
g=apply(b[9],2,as.numeric)

plot(c,e, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(c, e, col = "black")
lines(c, f, col = "red")
lines(c, g, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
