#Q1
#a
print(1-punif(45,min=0,max=60))
#b
print(punif(30,min=0,max=60)-punif(20,min=0,max=60))

#Q2
#a
dexp(3,rate=1/2)
#b
x<-seq(0,5,by=0.02)
fx<-dexp(x,rate=1/2)
plot(x,fx)
#c
pexp(3,rate=1/2)
#d
x<-seq(0,5,by=0.02)
fx<-pexp(x,rate=1/2)
plot(x,fx)
#e
x_sim<-rexp(1000,rate=1/2)
plot(density(x_sim))

#Q3
alpha<-2
beta<-1/3
#a
#i
dgamma(3,shape=alpha,scale=beta)
#ii
pgamma(1,shape=alpha,scale=beta,lower.tail=FALSE)
#b
qgamma(0.70,shape=alpha,scale=beta)


