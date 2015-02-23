set.seed(1234)

library("ggplot2")

cond <- c("Unique Spreadsheet", "Unique Spreadsheet", "Unique Spreadsheet", "B", "B", "B", "C", "C", "C")
stage1 <- c(5, 10, 20, 2, 3, 4, 1, 2, 4)
x <- c(0, 1, 2, 0, 1, 2, 0, 1, 2)

df <- data.frame(cond = cond, x = x, rating = stage1)

# http://docs.ggplot2.org/current/stat_density.html

m <- ggplot(data = df, aes(x = x, y = stage1, fill = cond))
m + geom_area(alpha = 0.4)

# tikz(file = "Figure1.tex", width = 2.5, height = 2.5)



