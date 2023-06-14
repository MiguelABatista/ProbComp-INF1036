letra_a <- function(){
  f <- function(x,c){
    return(c*x+1)
  }
  for(i in 1:20){
    c = -1.5+i/10
    print(c)
    print(integrate(f,0,2,c))
  }
}
letra_a()
