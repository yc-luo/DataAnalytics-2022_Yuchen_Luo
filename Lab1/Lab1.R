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
EPI <- data_2010EPI$EPI
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)
