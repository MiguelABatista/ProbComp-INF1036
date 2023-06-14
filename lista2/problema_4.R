automoveis <- function(nsamples){

  qtd_reprovou <- 0
  eh_dado_reprovou <- 0
  for( i in 1:nsamples){
    x = runif(1)
    y = runif(1)
    eh_poluente <- FALSE
    reprovou <- FALSE
    
    if( x <= 0.25){
      eh_poluente = TRUE
      if(y <= 0.99){
        reprovou = TRUE
      }
    } else if(y <= 0.17){
      reprovou = TRUE
    }
    if(reprovou){
      qtd_reprovou = qtd_reprovou + 1
      if(eh_poluente){
        eh_dado_reprovou = eh_dado_reprovou + 1
      }
    }
    
  }
  print(eh_dado_reprovou/qtd_reprovou)
}
automoveis(1000000)


