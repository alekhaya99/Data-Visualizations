library("ggplot2")

df_histo <- read.csv("D:/Data Science/365Data Science/Data VIs/Histo/histogram_data.csv",
                               header = TRUE,
                               sep = ",")

hist<-ggplot(df_histo,
             aes(x=Price))+
        geom_histogram(bins=8,
                       fill="blue",
                       color="white")+
        theme_classic()+
        ggtitle("Distribution of Real Estate Prices")+
        xlab("Price in (000 $)")+
        ylab("Number of Properties")+
        theme(plot.title = element_text(size=16,face="bold"))


hist