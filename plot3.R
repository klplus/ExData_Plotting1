download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile ="Fhousehold_power_consumption.zip" )

unzip("Fhousehold_power_consumption.zip")

data<-read.table("household_power_consumption.txt",header = TRUE,na.string="?",sep= ";",stringsAsFactors = FALSE)

datedata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dtt<-strptime(paste(datedata$Date,datedata$Time),"%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)

plot(dtt,datedata$Sub_metering_1,type="n",xlab="", ylab="Energy Submetering")

lines(dtt,datedata$Sub_metering_1)

lines(dtt,datedata$Sub_metering_2,col="red")

lines(dtt,datedata$Sub_metering_3,col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()