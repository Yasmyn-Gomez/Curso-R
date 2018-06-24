# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos las funciones if, ifelse y una funcion newmat creada

#Respuesta-3a: Creamos los siguentes vectores vec1 y vec2
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)

if((vec1[1]+vec2[2])==10){ cat("Imprime el resultado!") } #al ejecutar la función escrita SI se
# mostrará el texto "Imprime el resultado!" en la pantalla ya que la suma de los elementos vec[1]
# y vec[2] da como resultado 10 por lo que la condición es verdadera y se ejecuta el código entre llaves

if(vec1[1]>=2&&vec2[1]>=2){ cat("Imprime el resultado!") } #al ejecutar la función escrita se mostrará
# en pantalla el texto "Imprime el resultado!", esto porque tanto la primera condición antes del operador
# && como la segunda condición luego del operador son verdaderas

if(all((vec2-vec1)[c(2,6)]<7)){ cat("Imprime el resultado!") } #No se muestrará nada en la pantalla pues
# en el resultado de vec2-vec1=c(1,7,1,1,-2,-1,0) el elemento de la tercera posicón es igual a 7
# y en el vector lógico resultante de la comparación existirá un elemento cuyo valor lógico es FALSE
# por lo que al ejecutar all() obtendremos FALSE como resultado en la condición y el código entre llaves
# no se ejecutará

if(!is.na(vec2[3])){ cat("Imprime el resultado!") } #Se mostrará en pantalla el texto "Imprime el resultado!"
# ya que el elemento vec2[3] es diferente de NA por lo que la función is.na() dará FALSE como resultado y al
# aplicar el operador negación a esto obtenemos TRUE y el código entre llaves se ejecutará

#Respuesta-3b: usamos ifelse() para ejecutar la condicion dada en cada elemento de vec1 y vec2
ifelse(test=(vec1+vec2)>3,yes=vec1*vec2,no=vec1+vec2)

#Respuesta-3c:
# Como se requiere un código que lea una matriz cuadrada creamos una función (newmat) que la lea
# y haga lo pedido
newmat <- function(A){
  if(any((substr(x=diag(A),start=1,stop=1)=="g")|(substr(x=diag(A),start=1,stop=1)=="G"))){
    #usamos la funcion any para ver si algun elemento de su argumento es verdadero y así ejecutar el codigo
    #entre llaves y substr() para extraer el primer elemento y compararlo
    diag(A)[which((substr(x=diag(A),start=1,stop=1)=="g")|(substr(x=diag(A),start=1,stop=1)=="G"))]="AQUI"
    #reemplazamos con "AQUI" las posiciones de la diagonal que cumplen la condicion, esto usando which que
    #leera la misma condicion introducida en if
    A #mostramos la matriz final
  }else{
    A <- diag(nrow(A)) #si no cumple la condicion reemplazamos la matriz por la identidad(de su mismo orden)
    A #mostramos la nueva matriz
  }}

#Probamos la funcion creada para las siguientes matrices
mymat1 <- matrix(as.character(1:16),4,4)
newmat(mymat1) #probamos la funcion con la matriz mymat1
mymat2 <- matrix(c("DANDELION","Hyacinthus","Gerbera",
                   "MARIGOLD","geranium","ligularia",
                   "Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
newmat(mymat2) #probamos la funcion con la matriz mymat2
mymat3 <- matrix(c("GREAT","exercises","right","here"),2,2,
                byrow=T)
newmat(mymat3) #probamos la funcion con la matriz mymat3
