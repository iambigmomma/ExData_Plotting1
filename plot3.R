plot3<-function(){
        
        png(file = "plot3.png", bg = "transparent") # Initiate the relative operations about saving into png file
        col_names<-colnames(read.table( "household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")) # Get the column names of raw data
        data <-read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";", col.names = col_names) # Get the specific data
       
        
        
        plot(xaxt='n', data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = 1)
        lines(xaxt='n',data$Sub_metering_2,col="red") #Add sub_metering 2 into canvas
        lines(xaxt='n',data$Sub_metering_3,col="blue")#Add sub_metering 3 into canvas
        axis(1, at=c(1,nrow(data)/2+1,nrow(data)),labels=c("Thu","Fri","Sat"))
        dev.off()
        
}