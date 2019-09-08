rm(list=ls())

setwd('d:/Study/My projects/Thesis/Final/Slides')

## full model density plot
full.x = rnorm(1e3, .25, .03)

pdf("fullplot.pdf",7,4)
plot(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=3, main="",xlab="evaluation map value")

## inadequate models
for(i in 1:10){
  set.seed(i*1e3)
  lines(density(rnorm(1e3, .15-runif(1,-.01,.01), .02)), lwd=1, col="red")
}
dev.off()

#########################################
  
pdf("fullplot1.pdf",7,4)
plot(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=3, main="",xlab="evaluation map value")

## adequate models
for(i in 1:5){
  set.seed(i*1e3)
  lines(density(rnorm(1e3, .25-runif(1,-.01,.01), .03)), lwd=1, col="blue")
}

lines(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=2)
dev.off()

#########################################

pdf("fullplot2.pdf",7,4)
plot(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=3, main="",xlab="evaluation map value")

## inadequate models
for(i in 1:10){
  set.seed(i*1e3)
  lines(density(rnorm(1e3, .15-runif(1,-.01,.01), .02)), lwd=1, col="red")
}

## adequate models
for(i in 1:5){
  set.seed(i*1e3)
  lines(density(rnorm(1e3, .25-runif(1,-.01,.01), .03)), lwd=1, col="blue")
}

lines(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=2)
abline(v=.2, col="darkgreen", lwd=2)
dev.off()

#########################################

pdf("fullplot3.pdf",7,4)
plot(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=3, main="",xlab="evaluation map value")

## inadequate models
for(i in 1:10){
  set.seed(i*1e3)
  lines(density(rnorm(1e3, .15-runif(1,-.01,.01), .02)), lwd=1, col="red")
}

## adequate models
for(i in 1:5){
  set.seed(i*1e3)
  lines(density(rnorm(1e3, .3-runif(1,-.01,.01), .03)), lwd=1, col="blue")
}

lines(density(full.x), xlim=c(0,.4), ylim=c(0,20), lwd=2)
abline(v=.25, col="darkgreen", lwd=2)
dev.off()
