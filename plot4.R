plot4<-function(){
        
        png(file = "plot4.png", bg = "transparent")  # Initiate the relative operations about saving into png file
        col_names<-colnames(read.table( "household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")) # Get the column names of raw data
        data <-read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";", col.names = col_names) # Get the specific data
        
        
        par(mfrow=c(2,2)) #Create an matrix-like canvas which is divided into 4 blocks
        
        plot(xaxt='n', data$Global_active_power, type="l", xlab="", ylab="Global Active Power") #Fitsrt graph
        axis(1, at=c(1,nrow(data)/2+1,nrow(data)),labels=c("Thu","Fri","Sat"))
        
        plot(xaxt='n', data$Voltage, type="l", xlab= "datetime", ylab="Voltage") #Second graph
        axis(1, at=c(1,nrow(data)/2+1,nrow(data)),labels=c("Thu","Fri","Sat"))
        
        plot(xaxt='n', data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering") #Third graph
        legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),,col=c("black","red","blue"),lty = 1,bty = "n")
        lines(xaxt='n',data$Sub_metering_2,col="red")
        lines(xaxt='n',data$Sub_metering_3,col="blue")
        axis(1, at=c(1,nrow(data)/2+1,nrow(data)),labels=c("Thu","Fri","Sat")) 
        
        plot(xaxt='n', data$Global_reactive_power, type="l", xlab= "datetime", ylab="Global_reactive_power")# Forth graph
        axis(1, at=c(1,nrow(data)/2+1,nrow(data)),labels=c("Thu","Fri","Sat"))
        
        dev.off()
        
}




