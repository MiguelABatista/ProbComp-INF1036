#Trabalho para G2 de Probabilidade Computacional - INF1036
#Miguel dos Anjos Batista - 2112200
#Questao 1

simula_dados <- function(v_prob, nsamples){
  dist = rep(0,16)
  dados = c(1,2,3,4,5,6)
  for(i in 1:nsamples){
    s = sum(sample(dados,3,replace = TRUE, v_prob))
    dist[s-2] = dist[s-2] + 1
  }
  return(dist/nsamples)
}

letra_a <- function(nsamples){
  v_prob = rep(1/6,6)
  dist = simula_dados(v_prob,nsamples)
  return(dist)
}

letra_b <- function(nsamples){
  v_prob = c(1/7,1/7,1/7,1/7,2/7,1/7)
  dist = simula_dados(v_prob,nsamples)
  return(dist)
}

print("letra a:")
letra_a(10000)


print("letra b:")
letra_b(10000)[11-2]
