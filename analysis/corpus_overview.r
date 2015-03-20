
par(mar=c(5,4,4,5)+.1)
x <- c(1,10,33,100,333,1000,3333,10000,33333,100000,333333)
y1 <- c(40,1636,18779,26271,84466,53247,15879,12573,5347,2070,92)
y2 <- c(3596,1087,2159,2131,2078,1854,1111,566,175,25,0)
plot(x,y1,type="l",col="red",log="x", xlab="Number of cells", ylab="Number of Spreadsheets with # Input Cells")
axis(1, at=c(1,10,100,1000,10000,100000), labels=c("1","10","100","1000","10000","100000"))
par(new=TRUE)
plot(x, y2,,type="l",col="blue",xaxt="n",yaxt="n",xlab="",ylab="",log="x")
axis(4)
mtext("Number of Spreadsheets with # Formula Cells",side=4,line=3)
legend("topright",col=c("red","blue"),lty=1,legend=c("Input Cells","Formula Cells"))

#Not shown: 28976 spreadsheets with 0 input cells (probably empty sheets) and 234594 (!) spreadsheets with 0 formula cells