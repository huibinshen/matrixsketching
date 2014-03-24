
pdf("data_and_sketch.pdf",width=4,height=4.5)
cols = c("red","green","blue","yellow")

ori <- as.matrix(read.table("example_2d.txt",sep=","))
ind1 <- ori[,3] == 1
ind2 <- ori[,3] == 2
ind3 <- ori[,3] == 3
ind4 <- ori[,3] == 4


plot(ori[ind1,1],ori[ind1,2],col=cols[1],pch=16,xlim=c(-1,1),ylim=c(-1,1),xlab="x1",ylab="x2",main="Original data")
points(ori[ind2,1],ori[ind2,2],col=cols[2],pch=16)
points(ori[ind3,1],ori[ind3,2],col=cols[3],pch=16)
points(ori[ind4,1],ori[ind4,2],col=cols[4],pch=16)
dev.off()
pdf("data_and_sketch2.pdf",width=4,height=4.5)
ske <- as.matrix(read.table("example_2d_sketch.txt",sep=","))
ind1 <- ske[,3] == 1
ind2 <- ske[,3] == 2
ind3 <- ske[,3] == 3
ind4 <- ske[,3] == 4

plot(ske[ind1,1],ske[ind1,2],col=cols[1],pch=16,xlim=c(-60,60),ylim=c(-60,60),xlab="x1",ylab="x2",main="K-means on Sketch")
points(ske[ind2,1],ske[ind2,2],col=cols[2],pch=16)
points(ske[ind3,1],ske[ind3,2],col=cols[3],pch=16)
points(ske[ind4,1],ske[ind4,2],col=cols[4],pch=16)
dev.off()



# for 2 cluster
pdf("data_and_sketch_2cls.pdf",width=7,height=4)
par(mfrow=c(1,2))
cols = c("red","blue")

ori <- as.matrix(read.table("example_2d_2cls.txt",sep=","))
ind1 <- ori[,3] == 1
ind2 <- ori[,3] == 2

plot(ori[ind1,1],ori[ind1,2],col=cols[1],pch=16,xlim=c(-1,1),ylim=c(-1,1),xlab="x1",ylab="x2",main="Original data")
points(ori[ind2,1],ori[ind2,2],col=cols[2],pch=16)

ske <- as.matrix(read.table("example_2d_sketch_2cls.txt",sep=","))
ind1 <- ske[,3] == 1
ind2 <- ske[,3] == 2


plot(ske[ind1,1],ske[ind1,2],col=cols[1],pch=16,xlim=c(-70,70),ylim=c(-70,70),xlab="x1",ylab="x2",main="K-means on Sketch")
points(ske[ind2,1],ske[ind2,2],col=cols[2],pch=16)
dev.off()

