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
EPI<- na.omit(EPI)
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)
hist(EPI)

DALY <- data_2010EPI$DALY
DALY<- na.omit(DALY)#删除na数值
tf <- is.na(DALY)
E <- DALY[!tf]
summary(DALY)
hist(DALY)

#part 1b

AIR_H <- data_2010EPI$AIR_H
AIR_H<- na.omit(AIR_H)#删除na数值
tf <- is.na(AIR_H)
E <- AIR_H[!tf]

WATER_H <- data_2010EPI$WATER_H
WATER_H<- na.omit(WATER_H)#删除na数值
tf <- is.na(WATER_H)
E <- WATER_H[!tf]
boxplot(ENVHEALTH,DALY,AIR_H,WATER_H)
lmENVH<- lm(ENVHEALTH~DALY+AIR_H+WATER_H)

lmENVH
summary(lmENVH)
cENVH<-coef(lmENVH)
DALYNEW<-c(seq(5,95,5))
AIR_HNEW<-c(seq(5,95,5))

WATER_HNEW<-c(seq(5,95,5))
NEW<- data.frame(DALYNEW,AIR_HNEW,WATER_HNEW)
#pENV<- predict(lmENVH,NEW,interval="prediction")
#cENV<-predict(lmENVH,NEW,interval="confidence")
