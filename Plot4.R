
###########################################################
png("plot4.png", width = 480, height = 480)
ENERGY_PLOT <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?", colClasses = c(NA, NA, rep ("numeric", 7)))
ENERGY_PLOT$Date <- as.Date(ENERGY_PLOT$Date, "%d/%m/%Y")

ENERGY_PLOT$Global_active_power <- as.numeric(ENERGY_PLOT$Global_active_power)
ENERGY_PLOT2 <- subset(ENERGY_PLOT, Date == "2007-02-01")
ENERGY_PLOT3 <- subset(ENERGY_PLOT, Date == "2007-02-02")
ENERGY_PLOT4 <- rbind(ENERGY_PLOT2, ENERGY_PLOT3)
plot(ENERGY_PLOT4$datetime, ENERGY_PLOT4$Global_reactive_power, type="l", ylab = "Global_reactive_power", xlab = "" )

