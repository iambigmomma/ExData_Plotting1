plot1<-function(){

        png(file = "plot1.png", bg = "transparent")
        col_names<-colnames(read.table( "household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")) # Get the column names of raw data
        data <-read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";", col.names = col_names) # Get the specific data
        data$Date <-as.Date(data$Date, format='%d/%m/%Y')
        
        hist(data$Global_active_power, col="red", main = "Global Active Power" ,xlab = "Global Active Power (kilowatts)") # Plot the diagram with name and X Label
     
        dev.off()
}
