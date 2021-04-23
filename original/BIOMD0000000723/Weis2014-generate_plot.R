library(reshape2)
library(cowplot)
rm(list=ls())

data <- read.table("untitled.txt", sep = "\t" , header = TRUE , stringsAsFactors = FALSE)
colnames(data) <- trimws(gsub("\\."," ",sub("X\\.","",colnames(data))))
data <- data[data$Time < 1.5,]
for(i in 2:ncol(data)){
  data[,i] <- data[,i]/max(data[,i])
}
data <- melt(data, id.vars = "Time")

p5a <- ggplot(data[data$variable %in% "cycA",] , aes(x= Time , y = value))+
  geom_line(color="#FA0700")+scale_x_continuous(limits = c(0,1.1)) + theme_bw() +
  labs(y="Cyclin A2",x="")+
  theme(panel.grid = element_blank())

p5b <- ggplot(data[data$variable %in% "cycB",] , aes(x= Time , y = value))+
  geom_line(color="#0100FB")+scale_x_continuous(limits = c(0,1.1)) + theme_bw() +
  labs(y="Cyclin B1",x="")+
  theme(panel.grid = element_blank())

p5c <- ggplot(data[data$variable %in% "actCycB",] , aes(x= Time , y = value))+
  geom_line(color="#21A319")+scale_x_continuous(limits = c(0,1.1)) + theme_bw() +
  labs(y="actCycB",x="")+
  theme(panel.grid = element_blank())

p5d <- ggplot(data[data$variable %in% "cycA",] , aes(x= Time , y = value))+
  geom_line(color="#FA0700")+ scale_y_continuous(limits = c(0,0.4)) + 
  scale_x_continuous(limits = c(0.1,0.6), breaks = c(0.1,0.45)) + theme_bw() +
  labs(y="Cyclin A2",x="")+
  theme(panel.grid = element_blank())

p5e <- ggplot(data[data$variable %in% "cycB",] , aes(x= Time , y = value))+
  geom_line(color="#0100FB")+ scale_y_continuous(limits = c(0,0.3)) + 
  scale_x_continuous(limits = c(0.1,0.6), breaks = c(0.1,0.45)) + theme_bw() +
  labs(y="Cyclin B1",x="")+
  theme(panel.grid = element_blank())

p5f <- ggplot(data[data$variable %in% c("cycA","cycB","actCycB"),] , aes(x= Time , y = value , color = variable))+
  geom_line()+scale_x_continuous(limits = c(1.03,1.07)) + theme_bw() + 
  labs(y="Expression",x="")+
  theme(panel.grid = element_blank(),
        axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) + guides(color=FALSE) +
  scale_color_manual(
    values = c(cycA="#FA0700",
               cycB="#0100FB",
               actCycB="#21A319"))

plot_grid(p5a,p5b,p5c,p5d,p5e,p5f,
          ncol = 3,
          labels = c("A","B","C","D","E","F"))


