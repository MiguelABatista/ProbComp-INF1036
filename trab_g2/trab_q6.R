acha_vendedor <- function(vendedores,tempo_de_chegada){
  for(i in 1:4){
    if(vendedores[i] < tempo_de_chegada){
      return(i)
    }
  }
  return(-1)
}
letra_a <- function(T){
  vendedores <- c(0,0,0,0)
  total_atendidos = 0
  tempo_de_chegada <- 0
  while(tempo_de_chegada < T){
    tempo_de_chegada = tempo_de_chegada + rexp(1,rate = 1)
    vend = acha_vendedor(vendedores,tempo_de_chegada)
    if(vend != -1){
      vendedores[vend] = tempo_de_chegada + rexp(1,rate = 1/2)
      total_atendidos = total_atendidos + 1
    }
  }
  return(total_atendidos)
}

letra_b <- function(T, nsamples){
  sum = 0
  for(i in 1:nsamples){
    sum = sum + letra_a(T)
  }
  return(sum/nsamples)
}
print("Letra a:")
letra_a(24000)
print("Letra b:")
letra_b(24000,20)
