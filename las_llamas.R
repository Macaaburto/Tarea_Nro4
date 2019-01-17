"Funcion que cuenta palabras"
"strsplit(a,b)[[1]]" 


"Asignacion de funcion a variable"
Las_llamas <- strsplit("porque la llama que llama estando en llamas me llama, alguien más llama
"," ")[[1]] 

"Quitando cosas anexas al texto"
Las_llamas <- gsub(",","", Las_llamas)
Las_llamas <- gsub("\n","", Las_llamas)
Las_llamas <- gsub("\"","",Las_llamas)

"Verificando que el texto no tenga distractores"
print(Las_llamas)

"Pasar todas las palabras a minusculas con tolower"
Las_llamas2<-  tolower(Las_llamas)
Las_llamas2

"Aplicar unique que entrega una lista con palabras sin repetir"
unique(Las_llamas2)

"Contando llamas con For"
contando <-unique(Las_llamas2)
lista_llamas<- list()
for(i in 1:length(contando)){
  print(contando[i])
  contador <- 0
  for (y in 1:length(Las_llamas2)){
    print(Las_llamas2[y])
    lista<-c(lista,contador)
    if(contando[i]==Las_llamas2[y]){
      print(contador <- contador+1)
    }
  }
lista_llamas <-c(lista_llamas,contador) 
}


"Contando palabras de otra forma"
contando_las_llamas <- unlist(Las_llamas2)
contando_las_llamas
tablaPalabras <- table(contando_las_llamas)
tablaPalabras <- as.data.frame(tablaPalabras)



