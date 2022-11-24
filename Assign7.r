#Q1
n=100
df=99
r=rt(n,df)
hist(r)

#Q2
n=100
df=c(2,10,25)
rchisq(n, df[1])
rchisq(n, df[2])
rchisq(n, df[3])

#Q3
x<-seq(-6,6,length=100)
df<-c(1,4,10,30)
dt(x,df[1])
dt(x,df[2])
dt(x,df[3])
dt(x,df[4])
colour<-c('black','yellow','green','red')
plot(x,dt(x,df[4]),type = 'l',xlab="t-value",ylab="Density",col=colour[4])
for (i in 1:3){
  lines(x,dt(x,df[i]),type = "l",col=colour[i])
}

#Q4

#i
qf(0.95,df1=10,df2=20)

#ii
pf(1.5,df1=10,df2=20)
pf(1.5,df1=10,df2=20,lower.tail = FALSE)

#iii
q=c(0.25,0.5,0.75,0.999)
qf(q[1],df1=10,df2=20)
qf(q[2],df1=10,df2=20)
qf(q[3],df1=10,df2=20)
qf(q[4],df1=10,df2=20)

#iv
r=rf(1000,df1=10,df2=20)
hist(r)
