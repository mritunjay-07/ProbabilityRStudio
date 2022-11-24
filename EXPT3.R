#Q1
print(paste("Probabilty of getting 7, 8 or 9, 6's :  ",
            pbinom(9,12,1/6)-pbinom(6,12,1/6)))

#Q2
print(paste("Percentage of Students scoring 84 or more: ",
            pnorm(84,72,15.2,lower.tail=FALSE)*100))

#Q3
print(paste("Probability that no car arrives during 10AM to 11AM : ",
            dpois(0,5)))
print(paste("Probabilty that there are between 48 and 50 customers 
            during 8AM to 6PM : ",ppois(50,50)-ppois(47,50)))

#Q4
print(paste("Probabilty of exactly 3 defectives in the sample : ",
            dhyper(3,17,233,5)))

#Q5
x<-0:31
px<-dbinom(x,31,0.447)
plot(x,px)
dx<-pbinom(x,31,0.447)
plot(x,dx)
meanx<-sum(x*px)
print(paste("Mean : ",meanx))
varx<-sum((x-meanx)^2*px)
print(paste("Variance : ",varx))
sdx<-sqrt(varx)
print(paste("Standard Deviation : ",sdx))


