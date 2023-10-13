#importing dataset
Rdata<-read.csv("C:\\Users\\wendi\\Desktop\\PROJECT\\Project Data.csv")
#checking for outliers
library(ggplot2)
library(reshape2)
Prdata<-data.frame(Rdata)
#reshape sample data to long form
Project_Data<- melt(Prdata)
View(Project_Data)
#add variable parameter for axis label in dataset
levels(Project_Data$variable)<- c("EXHR","REXP","DEXP","MSPLY.M1","MSPLY.M2","MSPLY.M3","INF")
ggplot(Project_Data,aes(variable,value))+geom_boxplot()
