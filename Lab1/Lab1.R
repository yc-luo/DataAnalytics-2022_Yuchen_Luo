data_2010EPI <- read.csv('/Users/luoyuchen/Downloads/aEPI_data.csv')
View(data_2010EPI)
#attach(EPI_data)
#fix(EPI_data)
names(data_2010EPI) <- as.matrix(data_2010EPI[1, ])
data_2010EPI <- data_2010EPI[-1, ]
data_2010EPI[] <- lapply(data_2010EPI, function(x)
type.convert(as.character(x)))
data_2010EPI
View(data_2010EPI)
#EPI/DALY
EPI <- data_2010EPI$EPI
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
rug(EPI)
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

#DALY Configuration
DALY <- data_2010EPI$DALY
tf <- is.na(DALY)
E <- DALY[!tf]
summary(DALY)
boxplot(EPI,DALY)
qqplot(EPI,DALY)

#different intercompare
ENVHEALTH <- data_2010EPI$ENVHEALTH
tf <- is.na(ENVHEALTH)
E <- ENVHEALTH[!tf]
summary(ENVHEALTH)

ECOSYSTEM <- data_2010EPI$ECOSYSTEM
tf <- is.na(ECOSYSTEM)
E <- ECOSYSTEM[!tf]
summary(ECOSYSTEM)

boxplot(ENVHEALTH,ECOSYSTEM)
qqplot(ENVHEALTH,ECOSYSTEM)

#exercise 2

data_2010EPI <- read.csv('/Users/luoyuchen/Downloads/aEPI_data.csv')

names(data_2010EPI) <- as.matrix(data_2010EPI[1, ])
data_2010EPI <- data_2010EPI[-1, ]
data_2010EPI[] <- lapply(data_2010EPI, function(x)
  type.convert(as.character(x)))
data_2010EPI

View(data_2010EPI)
attach(data_2010EPI)
fix(data_2010EPI)
EPI_E2 <- data_2010EPI$EPI
EPI_Europe <- EPI_E2[data_2010EPI$EPI_regions == "Europe"]
summary(EPI_Europe)
