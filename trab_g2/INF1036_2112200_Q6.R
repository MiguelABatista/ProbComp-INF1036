#Trabalho para G2 de Probabilidade Computacional - INF1036
#Miguel dos Anjos Batista - 2112200
#Questao 6

acha_vendedor <- function(vendedores,tempo_de_chegada){
  for(i in 1:4){
    if(vendedores[i] < tempo_de_chegada){
      return(i)
    }
  }
  return(-1)
}

letra_a <- function(tempo){
  vendedores <- c(0,0,0,0)
  total_atendidos <- 0
  total_n_atendidos <- 0
  tempo_de_chegada <- 0
  while(tempo_de_chegada < tempo){
    tempo_de_chegada = tempo_de_chegada + rexp(1,rate = 1)
    vend = acha_vendedor(vendedores,tempo_de_chegada)
    if(vend != -1){
      vendedores[vend] = tempo_de_chegada + rexp(1,rate = 1/2)
      total_atendidos = total_atendidos + 1
    } else{
      total_n_atendidos = total_n_atendidos + 1
    }
  }
  return(c(total_atendidos,total_n_atendidos))
}

letra_b <- function(tempo, nsamples){
  sum = c(0,0)
  for(i in 1:nsamples){
    sum[1] = sum[1] + letra_a(tempo)[1]
    sum[2] = sum[2] + letra_a(tempo)[2]
  }
  sum[1] = sum[1]/nsamples
  sum[2] = sum[2]/nsamples
  return(sum)
}
print("Letra a:")
letra_a(24000)
print("Letra b:")
letra_b(24000,20)
