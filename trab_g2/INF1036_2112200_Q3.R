#Trabalho para G2 de Probabilidade Computacional - INF1036
#Miguel dos Anjos Batista - 2112200
#Questao 3

testa_c <- function(c,nsamples){
  sum = 0
  for(i in 1:nsamples){
    x = runif(1)
    sum = sum + 2*(2*c*x+1)
  }
  return(sum/nsamples)
}

letra_a <- function(nsamples){
  f <- function(x,c){
    return(c*x+1)
  }
  for(i in 1:20){
    c = -1.5+i/10
    resp = testa_c(c,nsamples)
    if(abs(resp - 1) < 1/100){
      return(c)
    }
  }
  return("Nenhum c satisfaz")
}

c = letra_a(10000)
print("Letra a:")
print(c)

letra_b <- function(c, nsamples){
  sum = 0
  for(i in 1:nsamples){
    x = runif(1)
    sum = sum + c*x+1
  }
  return(sum/nsamples)
}

letra_c <- function(c, nsamples){
    sum = 0
  for(i in 1:nsamples){
    x = runif(1)
    sum = sum + (2*x)*(2*c*x+1)*2
  }
  return(sum/nsamples)
}
c = letra_a(10000)
print("Letra a:")
print(c)

print("Letra b:")
print(letra_b(c,100000))

print("Letra c:")
print(letra_c(c,100000))
