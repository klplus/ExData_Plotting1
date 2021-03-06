

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile ="Fhousehold_power_consumption.zip" )unzip("Fhousehold_power_consumption.zip")

data<-read.table("household_power_consumption.txt",header = TRUE,na.string="?",sep= ";",stringsAsFactors = FALSE)

datedata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)

hist(datedata$Global_active_power,main="Global Active Power",col="red",xlab = "Global Active power(kilowatts)")

dev.off()