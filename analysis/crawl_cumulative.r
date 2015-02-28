set.seed(1234)

# http://www.cookbook-r.com/Graphs/Legends_%28ggplot2%29/

library("ggplot2")
library("scales")

cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

cbbPalette <- c("#56B4E9", "#E69F00", "#999999", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


df <- read.csv('stackarea.csv')

m <- ggplot(data = df, aes(x = Group, y = Count, fill = factor(Type))) + 
  geom_area() +  
  #scale_fill_discrete("Spreadsheet Layer", breaks=c(1:3), labels=c("Unique Analysis", "Binary Analysis ", "Web Analysis")) + 
  geom_text(aes(x=6, y=100000, label="Unique Analysis"), family="Serif") + 
  geom_text(aes(x=6, y=300000, label="Binary Analysis"), family="Serif") + 
  geom_text(aes(x=6, y=700000, label="Web Analysis"), family="Serif", fontface=1) + 
  guides(fill = FALSE) +   
  ylab("Cumulative Count of Spreadsheets") +
  xlab("Common Crawl") + scale_x_continuous(breaks=c(0:9), 
                                            labels=c("Sum13",
                                                     "Win13",
                                                     "Mar14",
                                                     "Apr14",                                                                                                          
                                                     "Jul14",
                                                     "Aug14",
                                                     "Sep14",
                                                     "Oct14",
                                                     "Nov14",
                                                     "Dec14"
                                                     ))

svg("stack.SVG", width= 6, height=4)
print(m)
dev.off()

