library(ggplot2)
a=read.csv("C:/Users/User/AppData/Local/Temp/household_power_consumption_FSFJUv",header=TRUE,sep=";")
b=subset(a,Date=="1/2/2007" | Date=="2/2/2007")
for (i in 1:dim(b)[1]) {
b[i,1]=format(as.Date(b[i,1], format="%d/%m/%Y"), "%Y-%m-%d")}
c=apply(b[3],2,as.numeric)
d=apply(b[1],2,as.Date)
for (i in 1:length(d)){
  d[i]=format(as.Date(b[i,1],format="%Y-%m-%d"),"%a")  }
e=apply(b[9],2,as.numeric)
for (i in 1:length(d)){
  d[i]=format(as.Date(b[i,1],format="%Y-%m-%d"),"%a")  }
plot(c,xlab=" ",ylab="Global Active Power (kilowatts)",type="l")
plot(e,xlab=" ",ylab="Energy sub metering",type="l")
f=apply(b[5],2,as.numeric)
plot(f,xlab="datetime",ylab="Voltage",type="l")
g=apply(b[4],2,as.numeric)
plot(g,xlab="datetime",ylab="Global_reactive_power",type="l")
par(mfcol=c(2,2))
plot(c,xlab=" ",ylab="Global Active Power (kilowatts)",type="l")
plot(e,xlab=" ",ylab="Energy sub metering",type="l")
plot(f,xlab="datetime",ylab="Voltage",type="l")
plot(g,xlab="datetime",ylab="Global_reactive_power",type="l")

