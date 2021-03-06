library(scs)
m = 100
n = 100

set.seed(1)
A <- matrix(rnorm(m*n),m,n)
b = rnorm(m)
c = rnorm(n)
cone = list(f = m)
params = list(eps = 1e-4, max_iters = 5000)
sol <- scs(A, b, c, cone, params) 
