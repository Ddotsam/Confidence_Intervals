sample <- rnorm(25, mean = 0, sd = 3)
interval <- c(t.test(sample, conf.level = level)$conf.int[1], 
              t.test(sample, conf.level = level)$conf.int[2])
plot(x = c(interval), y = c(0,0), xlim = c(-3, 3), ylim = c(0, 1), 
     yaxt = "n", ylab = "", xlab = "One Confidence Interval", type = 'p', pch = 15)
segments(x0 = interval[1], y0 = 0, 
         x1 = interval[2], y1 = 0, 
         lwd = 3, col = 'firebrick')

#Generate the Confidence Intervals
iter = 100
left.int <- rep(0, iter)
right.int <- rep(0, iter)
level = .95
for(i in 1:iter){
  sample <- rnorm(25, mean = 0, sd = 3)
  left.int[i] <- t.test(sample, conf.level = level)$conf.int[1]
  right.int[i] <- t.test(sample, conf.level = level)$conf.int[2]
}

#Draw plot
CI.plot()


#Draw new plot function
CI.plot <- function(){
  #This part draws the plot
  plot.new()
  plot.window(xlim = c(-3,3), ylim = c(0, iter/2))
  axis(1)
  axis(2)
  abline(v = 0, lty = 2, lwd = 2)
  title(main = "Does the CI Include the Mean?", xlab = "Confidence Interval")
  #This part plots the confidence intervals
  for(i in 1:iter){
    if(left.int[i]>0 | right.int[i]<0){
      segments(x0 = left.int[i], y0 = i/2, x1 = right.int[i], col = 'coral', lwd = 3)
    }
    else{
      segments(x0 = left.int[i], y0 = i/2, x1 = right.int[i], col = 'darkslategray3', lwd = 3)
    }
  }
}
