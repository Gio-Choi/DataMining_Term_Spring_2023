install.packages("arules")
library("arules")

setwd("/Users/choi_jiwung/Desktop/23-1/Datamining/code/ARD")
tran <- read.transactions("main_exercises1.txt", format='basket', sep=",",rm.duplicates =T)
tran

inspect(tran)

rule <- apriori(tran, parameter = list(supp=0.006, conf = 0.8))
inspect(rule)

summary(tran)
