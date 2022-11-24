#q1
#a
print(1 - punif(45, min = 0, max = 60))
#b
print(punif(30, min = 0, max = 60) - punif(20, min = 0, max = 60))

#q2
#a
dexp(3, rate = 1/2)
#b
x <- seq(0, 5, by = 0.02)
fx <- dexp(x, rate = 1/2)
plot(x, fx)
#c
pexp(3, rate = 1/2)
#d
x <- seq(0, 5, by = 0.02)
fx <- pexp(x, rate = 1/2)
plot(x, fx)
sim <- rexp(1000, rate = 1/2)
plot(density(sim))

#q3
#a
#1
dgamma(3, shape = 2, scale = 1/3)
#2
pgamma(1, shape = 2, scale = 1/3, lower.tail = FALSE)
#3
qgamma(0.70, shape = 2, scale = 1/3)

