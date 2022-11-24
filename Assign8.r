#Q1

#a
data = read.csv(file.choose())
#b
dim(data)
head(data,n=10)
#c
m<-mean(data$Wall.Thickness)
m
hist(data$Wall.Thickness,col="cyan")
#d
abline(v=m,col="red",lty=1)
# The data is not normally distributed


#Q2

#a
n<-9000
s10<-c()
for(i in 1:n)
{
  s10[i]<-mean(sample(data$Wall.Thickness,10,replace=TRUE))
}
hist(s10,col="pink")
abline(v=mean(s10),col="blue",lty=1)

#b
s30<-c()
s50<-c()
s500<-c()
par(mfrow=c(1,3))
for(i in 1:n)
{
  s30[i]<-mean(sample(data$Wall.Thickness,30,replace=TRUE))
  s50[i]<-mean(sample(data$Wall.Thickness,50,replace=TRUE))
  s500[i]<-mean(sample(data$Wall.Thickness,500,replace=TRUE))
}
hist(s30,col="red")
abline(v=mean(s30),col="blue",lty=1)
hist(s50,col="yellow")
abline(v=mean(s50),col="blue",lty=1)
hist(s500,col="pink")
abline(v=mean(s500),col="blue",lty=1)

V<-c(1,2,3,4,5,6,7,8)
V
for(i in 1:8)
{
print(sample(V,3,replace=TRUE))
}

