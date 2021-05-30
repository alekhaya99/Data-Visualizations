library("ggplot2")

df_used_car<-read.csv("D:/Data Science/365Data Science/Data VIs/Bar Chart/bar_chart_data.csv",header=TRUE,sep=",")

bar_chart<-ggplot(df_used_car,aes(x=Brand,y=Cars.Listings))+geom_bar(stat="identity",width = 0.8,color='navy',fill='navy')+ggtitle("Car Listings by Brand")+theme_classic()+theme(axis.text.x =element_text(angle = 45,hjust = 1) )+labs(x=NULL,y="Number of Listings")

bar_chart