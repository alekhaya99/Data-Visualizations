library("ggplot2")

df_reg <- read.csv("D:/Data Science/365Data Science/Data VIs/Regression/scatter_plot_ii.csv",
                       header = TRUE,
                       sep = ",")

regression<-ggplot(df_reg,
                   aes(x=Budget,
                       y=Sales))+
                  geom_point(size=4,
                             color="blue")+
                  geom_smooth(method = lm,color="red",fill="red")+
                  theme_classic()+
                  xlab("Sales in (000's Units)")+
                  ylab("Price in (000's $)")+
                  ggtitle("Effect of Ad Expenditure on Sales (Regression)")

regression