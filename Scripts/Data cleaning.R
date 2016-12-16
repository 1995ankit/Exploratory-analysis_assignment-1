hse<-read.table("household_power_consumption.txt",comment.char = "#",header=TRUE,na.strings = "?",sep=";")
hse$Date=as.Date(as.character(hse$Date),"%d/%m/%Y")
library(chron)
hse$Time=chron(times=hse$Time)
hs=subset(hse,Date=="2007-02-01"|Date=="2007-02-02")
library(lubridate)
hs$yt=ymd(hs$Date)+hms(hs$Time)

