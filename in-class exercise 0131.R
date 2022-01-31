library(ggplot2)
library(magrittr)
library(dplyr)

diamonds1 <- diamonds %>% filter(between(y, 3, 20)) #把3<x<20以外的都删掉了
diamonds2 <- diamonds %>% mutate(y = ifelse(y < 3 | y > 20, NA, y)) #把3<x<20以外全部赋值成NA
ggplot(data = diamonds1, mapping = aes(x = x, y = y)) + geom_point()#display warning
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + geom_point(na.rm = TRUE)# To suppress that warning
#question: why there's a zero in x-value(zero size of the diamond)
boxplot(diamonds1$carat,diamonds2$carat)

nycflights13::flights %>% 
mutate( cancelled = is.na(dep_time), 
        sched_hour = sched_dep_time %/% 100, 
        sched_min = sched_dep_time %% 100, 
        sched_dep_time = sched_hour + sched_min / 60 ) %>% 
ggplot(mapping = aes(sched_dep_time)) + geom_freqpoly( mapping = aes(color = cancelled), binwidth = 1/4 )
