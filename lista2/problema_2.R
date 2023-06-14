detector <- function(nsamples){
  acusados <- 0
  risco_dado_acusado <- 0
  nao_acusados <- 0
  safo_dado_nao_acusado <- 0
  
  for(i in 1:nsamples){
    x = runif(1)
    y = runif(1)
    eh_risco = FALSE
    acusacao = FALSE
    if(x <= 0.02){
      eh_risco = TRUE
      if(y <= 0.9){
        acusacao = TRUE
      }
    } else if(y <= 0.08){
      acusacao = TRUE
    }
    
    if(acusacao){
      acusados = acusados + 1
      if(eh_risco){
        risco_dado_acusado = risco_dado_acusado + 1
      }
    } else{
        nao_acusados = nao_acusados + 1
        if(eh_risco == FALSE){
          safo_dado_nao_acusado = safo_dado_nao_acusado + 1
      }
    }
  }
  
  print(risco_dado_acusado/acusados)
  print(safo_dado_nao_acusado/nao_acusados)
}

detector(1000000)
