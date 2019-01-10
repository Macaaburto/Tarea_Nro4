" Este comando permite tener acceso al archivo 'Funciones.R" 
source('Funciones.R')

"¿Que tan lento es crear 5000 Ruts?"
"Receta de diseño"
"Definicion de tiempo: tiempo que se demora en codificar Ruts "
"Definicion de Ruts: crea una lista de 5.000 numeros de ruts aleatorios unicos con su 
digito verificador, todos estos sin repetición "


tiempo<- proc.time()
Ruts <- list()
for(i in sample(0000000:9999999,5000,replace=F)){
  rut<- print(paste(i,"-",Digito_verificador(i)))
  Ruts <-c(Ruts,rut)
}
proc.time() - tiempo

" Tras esta funcion y la creacion de los 5.000, el tiempo que se demora en recorrer la 
lista de los Ruts es"
proc.time() - tiempo
" user    system    elapsed 
  12.35    0.33      425.04 "
