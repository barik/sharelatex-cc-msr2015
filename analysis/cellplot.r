library("ggplot2")
library("scales")

file.read <- read.csv('input_and_formula_cells.csv')

#p1 <- ggplot(fc, aes(N, COUNT)) + geom_point(shape=19, alpha=1/4) + scale_x_log10() + 
#  scale_y_log10() +  geom_smooth()

cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

xbreaks <- c(1,10,100,1000,10000,100000)
ybreaks <- c(1,10,100,1000,10000,100000)

p2 <- ggplot(file.read, aes(x = N, y = COUNT, color = CATEGORY)) + scale_colour_manual(name="Cell Type",values=cbbPalette,labels=c("Formula", "Input")) +
  geom_point(size=3, alpha=0.4) + scale_x_log10(breaks=xbreaks,labels=comma) + scale_y_log10(breaks=ybreaks,labels=comma) + geom_smooth(level = 0.99) +
  xlab("Cell Count") + ylab("Count of Spreadsheets") + theme(legend.position="bottom")

# + theme(legend.position=c(.9, .8))

#+ geom_point(shape=1, size=I(2), alpha = I(0.5)) + scale_x_log10() + 
#  scale_y_log10() + xlab("Count of Non-Empty Cells") + ylab("Count of Spreadsheets")


plot(p2)