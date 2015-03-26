set.seed(1234)

# http://www.cookbook-r.com/Graphs/Legends_%28ggplot2%29/

library("ggplot2")
library("scales")

cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

cbbPalette <- c("#56B4E9", "#E69F00", "#999999", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


df <- read.csv('stackarea2.csv')

m <- ggplot(data = df, aes(x = Group, y = Count, fill = factor(Type))) + 
  geom_area() + scale_fill_brewer(type = "seq", palette = 3) +
  # scale_fill_discrete("Spreadsheet Layer", breaks=c(1:2), labels=c("Binary Analysis", "Web Analysis")) + 
  guides(fill = guide_legend(reverse=TRUE)) +     
  geom_text(aes(x=7, y=100000, label="Binary Analysis", family="sans")) +
  geom_text(aes(x=6, y=700000, label="Web Analysis", family="sans")) +
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

# print(m)

svg("stack.svg", width=5.5, height=3.5)
print(m)
dev.off()



