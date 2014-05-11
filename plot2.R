plot2<-function(){
        
        png(file = "plot2.png", bg = "transparent") # Initiate the relative operations about saving into png file
        col_names<-colnames(read.table( "household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")) # Get the column names of raw data
        data <-read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";", col.names = col_names) # Get the specific data
        data$Date <-as.Date(data$Date, format='%d/%m/%Y')
        
        
        
        plot(xaxt='n', data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") # plot the data
        axis(1, at=c(1,nrow(data)/2+1,nrow(data)),labels=c("Thu","Fri","Sat"))
        dev.off()
        
        
       
        
}
