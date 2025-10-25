setwd("C:\\Users\\it24101575\\Desktop\\Lab5")
Delivery_Times<- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Time)

#convert to numeric vector
Delivery_Time<- as.numeric(Delivery_Times$Delivery_Time)

View(Delivery_Times)
attach(Delivery_Times)


histogram <- hist(Delivery_Time, 
                  main = "Histogram of Delivery Times", 
                  xlab = "Delivery Time (minutes)",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE,
                  col = "lightblue")


#The distribution appears to be approximately symmetric with a slight right skew.
#Most delivery times are clustered around 35-55 minutes, with fewer very short
#20-30 minutes and very long 60-70 delivery times.


names (Delivery_Times) [1] <- "Delivery_Times"
Delivery_Times $Delivery_Timesas.numeric(Delivery_Times $Delivery_Times)
breaks <- seq(20, 70, length.out = 10)
Interval <- cut (Delivery_Times$Delivery_Times, breaks = breaks, right= FALSE)
freq_table <- table (Interval)
cum_freq <- cumsum(freq_table)


plot(tail(breaks, -1), cum_freq, 
     type = "0",
     col = "darkgreen",
     xlab = "Upper Class Boundarise", 
     ylab = "Cumulative Frequency",
     main = "Cumulative Frequency Polygon (Ogive)")
      

# Add points to the ogive
points(breaks, cumulative_data, pch = 16, col = "red")

# Display cumulative frequency table
cbind(Upper_Limit = breaks, Cumulative_Frequency = new)

