##Punto 1

fp = function(t,y, parms){
  s = y + 6*t
  return(list(s)) # ode requiere salida sea una lista
}

interval <- 20
h <- 0.1
tis= seq(0,interval*h,h)

# Usamos la función ode()
sol = ode(c(-1,2), tis, fp, parms=NULL, method = "rk")
# Representación

solExacta <- function(x){ return(1.0/5.0*(3.0*exp(3.0*x) + 7.0*exp(-2.0*x))) } 

plot(solExacta, xlim=c(0,2), ylim=c(-1,15), col="red", xlab = "X", ylab= "Y")
points(times,sol[,3])

vec <- c()
vec2 <- c()
er <- c()
options( digits = 5)

for( i in 1:20 ){
  vec <- c(vec,sol[i,3])
  vec2 <- c( vec2,solExacta(i*h) )
  er <- c(er, abs( sol[i,3] - solExacta(i*h) ) )
}

tabla = cbind( vec[1:20] , cbind( vec2[1:20], er[1:20]) )
colnames(tabla) = c("SolNumerica", "SolExacta ","Error")
tabla

print( sol[,3])

##Punto 2

fp = function(t,y, parms){
  
  with(as.list(c(y)),{
    # rate of change
       s = 3*X -2*Y
      d = 5*X -4*Y
      
         # return the rate of change
         list(c(s,d))
       })
}

interval <- 10
h <- 0.1
tis= seq(0,interval*h,h)

# Usamos la función ode()
sol = ode(c(X=3, Y=6), tis, fp, parms=NULL, method = "rk")
plot(sol)


##Punto 5
fp = function(t,y, parms){
  
  with(as.list(c(y)),{
    # rate of change
    s = X -3*Y
    d = 3*X + 7*Y
    
    # return the rate of change
    list(c(s,d))
  })
}

interval <- 10
h <- 0.1
tis= seq(0,interval*h,h)

# Usamos la función ode()
sol = ode(c(X = 3, Y = 6), tis, fp, parms=NULL, method = "rk")
plot(sol)

