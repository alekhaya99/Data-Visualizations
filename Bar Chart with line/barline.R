library("ggplot2")

df_reg <- read.csv("D:/Data Science/365Data Science/Data VIs/Barline/bar_line_chart_data.csv",
                   header = TRUE,
                   sep = ",")

combo<-ggplot(df_reg,
              aes(x=Year,
                  y=Participants,Python.Users))+
              geom_bar(aes(y=df_reg$Participants),
                       stat="identity",
                       fill="blue")+
              geom_line(aes(y=df_reg$Python.Users*max(df_reg$Participants)),
                        stat="identity",
                        color="red",
                        size=2)+
              scale_y_continuous(sec.axis = sec_axis(~./max(df_reg$Participants)*100,
                                                     name="Python Users in %"))+
              ggtitle("Python Users from 2012 to 2019")

combo