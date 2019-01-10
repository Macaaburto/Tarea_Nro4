"Receta de diseño"
"digito_verificador-> int -> int"
"Definicion digito_verificador: la función entrega rut validos "
"Ejemplo: digito_verificador (18066591) ->9"


Digito_verificador <- function(rut){
  rut = as.character(rut)
  x = as.numeric(rev(strsplit(rut,NULL)[[1]]))
  Multiplo = rep(2:7,length.out=length(x))
  y = sum(x*Multiplo)
  z = 11 - y + floor(y/11)*11
  key = c(1:11)
  val = c(1:9,"k",0)
  Digito_verificador = val[match(z, key)]
  return(Digito_verificador)
}

Digito_verificador(18066591)
"Test"
Digito_verificador(8315225)
Digito_verificador(8919162)
Digito_verificador(19186427)
Digito_verificador(17835666)
