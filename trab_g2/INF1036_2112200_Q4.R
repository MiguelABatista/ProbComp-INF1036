#Trabalho para G2 de Probabilidade Computacional - INF1036
#Miguel dos Anjos Batista - 2112200
#Questao 4

letra_a <- function(nsamples){
  samples <- rep(0,nsamples)
  c <- 2.109375
  for(i in 1:nsamples){
    while(1){
      y <- runif(1)
      u <- runif(1)
      if(u <= (20*y*(1-y)^3/c*1)){
        samples[i] = y
        break
      }
    }
  }
  return(samples)
}

samples <- letra_a(100000)
hist(samples)

