a=read.csv("C:/Users/User/AppData/Local/Temp/household_power_consumption_FSFJUv",header=TRUE,sep=";")
b=subset(a,Date=="1/2/2007" | Date=="2/2/2007")
for (i in 1:dim(b)[1]) {
b[i,1]=format(as.Date(b[i,1], format="%d/%m/%Y"), "%Y-%m-%d")}
c=apply(b[3],2,as.numeric)
d=apply(b[1],2,as.Date)
for (i in 1:length(d)){
d[i]=format(as.Date(b[i,1],format="%Y-%m-%d"),"%a")  }
e=apply(b[7],2,as.numeric)
f=apply(b[8],2,as.numeric)
g=apply(b[9],2,as.numeric)
par(mfrow = c(2, 2))

plot(c,xlab=" ",ylab="Global Active Power (kilowatts)",type="l",xaxt="n")
axis(1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
h=apply(b[5],2,as.numeric)
j=apply(b[4],2,as.numeric)

plot(c, h, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
lines(c, h, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

plot(c,e, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(c, e, col = "black")
lines(c, f, col = "red")
lines(c, g, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

plot(c, j, type = "l", col = "black", xlab = "datetime", ylab = colnames(data)[3], xaxt = "n")
lines(c, j, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

