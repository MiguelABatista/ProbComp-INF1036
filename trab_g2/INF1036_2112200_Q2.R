#Trabalho para G2 de Probabilidade Computacional - INF1036
#Miguel dos Anjos Batista - 2112200
#Questao 2

func_f <- function(nsamples){
  #F(x) = x^5 => F^-1(x) = x^(1/5)
  
  samples <- rep(0,nsamples)
  
  for(i in 1:nsamples){
    u = runif(1)
    samples[i] <- u^(1/5)
  }
  return(samples)
}

func_g <- function(nsamples){
  #G(x) = 2x^2 se 0<x<0.5, G(x) = -2*x^2+4x-1 se 0.5 < x < 1 
  #G-1(x)^= (x/2)^1/2 se 0<x<0.5, G^-1(x) = 1-sqrt((1-x)/2) se 0.5 < x < 1 
  samples <- rep(0,nsamples)
  
  for(i in 1:nsamples){
    u = runif(1)
    if(u <= 0.5){
      samples[i] <- sqrt(u/2)
    }else{
      samples[i] <- 1 - sqrt((1-u)/2)
    }
  } 
  return(samples)
}

letra_a <- function(funcao, nsamples){
  if(funcao == 1){
    return(func_f(nsamples))
  }
  
  else if(funcao == 2){
    return(func_g(nsamples))
  }
}

f_dist <- letra_a(1,100000)
hist(f_dist)

g_dist <- letra_a(2,1000000)
hist(g_dist)
