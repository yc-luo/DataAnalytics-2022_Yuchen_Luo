#lab2 part 1 assignment 2
data_2010EPI <- read.csv('/Users/luoyuchen/Downloads/aEPI_data.csv')
View(data_2010EPI)
attach(EPI_data)

names(data_2010EPI) <- as.matrix(data_2010EPI[1, ])
data_2010EPI <- data_2010EPI[-1, ]
data_2010EPI[] <- lapply(data_2010EPI, function(x)
  type.convert(as.character(x)))

#EPI/DALY
EPI <- data_2010EPI$EPI
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)
hist(EPI)

DALY <- data_2010EPI$DALY
tf <- is.na(DALY)
E <- DALY[!tf]
DALY<- na.omit(DALY)#删除na数值
summary(DALY)
hist(DALY)

#part 1b

boxplot(ENVHEALTH,DALY,data_2010EPI$AIR_H,data_2010EPI$WATER_H)
lmENVH<- lm(ENVHEALTH~DALY+data_2010EPI$AIR_H+data_2010EPI$WATER_H)
lmENVH
summary(lmENVH)
cENVH<-coef(lmENVH)
DALYNEW<-c(seq(5,95,5))
AIR_HNEW<-c(seq(5,95,5))

WATER_HNEW<-c(seq(5,95,5))
NEW<- data.frame(DALYNEW,AIR_HNEW,WATER_HNEW)
#pENV<- predict(lmENVH,NEW,interval="prediction")
#cENV<-predict(lmENVH,NEW,interval="confidence")
