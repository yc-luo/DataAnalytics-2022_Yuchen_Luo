# Jan 24 in-class exercise
# creating a dataframe

days <- c('Mon','Tue','Wed','Thur','Fri','Sat','Sun') #Days
temp <- c(28,30.5,32,31.2,29.3,27.9,26.4) #temp in F 
snowed <- c('T','T','F','F','T','T','F') #snow on that day : T=TRUE
snowed
help("data.frame")

RPI_Weather_Week <- data.frame(days,temp,snowed)

RPI_Weather_Week
head(RPI_Weather_Week) # head of the data frame(only shows 6 row)
str(RPI_Weather_Week) # look at the structure of the dataframe
summary(RPI_Weather_Week) #summary
 
RPI_Weather_Week[1,] #show first row and all col
RPI_Weather_Week[,1]# shows 1st column and all row

RPI_Weather_Week[,'snowed']
RPI_Weather_Week[,'days']
RPI_Weather_Week[,'temp']
RPI_Weather_Week[1:5,c("days","temp")]

RPI_Weather_Week$temp
subset(RPI_Weather_Week,subset=snowed==TRUE)

sorted.snowed <- order(RPI_Weather_Week['snowed'])
sorted.snowed
RPI_Weather_Week[sorted.snowed,]

#RPI_Weather_Week[descending_snowed,]
dec.snow <- order(-RPI_Weather_Week$temp)
dec.snow


#creating dataframes
#creating an empty dataframe
empty.Dataframe <- data.frame()
v1 <- 1:10
v1
letters
v2 <- letters[1:10]
