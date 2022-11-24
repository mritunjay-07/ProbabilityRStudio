library(pracma)

#Q1
f<-function(x,y)
{
  2*(2*x+3*y)/5
}

#i
Ans <- integral2(f,xmin=0,xmax=1,ymin=0,ymax=1)
Ans$Q
if(Ans$Q==1)
{
  print("It is a joint density function")
} else
{
  print("It is not a joint density function")
}

#ii
g1 <- function(y)
{
  f(1,y)
}
Ansb <- integral(g1,0,1)
Ansb

#iii
h0 <- function(x)
{
  f(x,0)
}
Ansc <- integral(h0,0,1)
Ansc

#iv
fxy <- function(x,y)
{
  x*y*f(x,y)
}
Ansd <- integral2(fxy,xmin=0,xmax=1,ymin=0,ymax=1)
Ansd$Q

#Q2

f <- function(x,y)
{
  (x+y)/30
}

X <- 0:3
Y <- 0:2

#i
M <- matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
M

#ii
sum(M)
if(sum(M)==1)
{
  print("It is a joint mass function")
} else
{
  print("It is not a joint mass function")
}

#iii
g <- apply(M,1,sum)
g

#iv
h <- apply(M,2,sum)
h

#v
Ansd <- M[1,2]/h[2]
Ansd

#vi
gx <- X*g 
Ex <- sum(gx)
Ex

hy <- Y*h
Ey <- sum(hy)
Ey

fxy <- function(x,y)
{
  x*y*f(x,y)
}

Exy <- sum(c(fxy(0,Y),fxy(1,Y),fxy(2,Y),fxy(3,Y)))
Exy

Ex2 <- sum(gx*X)
Ey2 <- sum(hy*Y)

Vx <- Ex2-Ex^2
Vx

Vy <- Ey2-Ey^2
Vy

Covxy <- Exy-Ex*Ey
Covxy

Corrxy <- Covxy/sqrt(Vx*Vy)
Corrxy
