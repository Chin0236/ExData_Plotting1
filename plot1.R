a=read.csv("C:/Users/User/AppData/Local/Temp/household_power_consumption_FSFJUv",header=TRUE,sep=";")
b=subset(a,Date=="1/2/2007" | Date=="2/2/2007")
for (i in 1:dim(b)[1]) {
b[i,1]=format(as.Date(b[i,1], format="%d/%m/%Y"), "%Y-%m-%d")}
c=apply(b[3],2,as.numeric)
hist(c,main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red",
     freq=TRUE)