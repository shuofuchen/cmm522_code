library("remotes")

x <- seq(-pi,pi,0.1)
plot(x, sin(x),col="dodgerblue2",pch=20)
points(x,cos(x),col="indianred",pch=20)

pdf("~/ccbb_projects/pretty_plot.pdf")
plot(x, sin(x),col="dodgerblue2",pch=20)
points(x,cos(x),col="indianred",pch=20)
dev.off()

j = runif(100)
k = runif(100)
pdf("~/ccbb_projects/pretty_plot.pdf")
plot(j,k,col="mediumorchid2",pch=20)
dev.off()

pdf("~/ccbb_projects/pretty_plot.pdf")
plot(x, sin(x),col="dodgerblue2",pch=20)
points(x,cos(x),col="indianred",pch=20)
plot(j,k,col="mediumorchid2",pch=20)
dev.off()

install.packages(c("remotes","rlang","vctrs"))
library("remotes")

remotes::install_version("scales", version="1.3.0",upgrade=F)
remotes::install_version("ggplot2", version="3.4.3",upgrade=F)
remotes::install_github("cutterkom/generativeart",upgrade=F)