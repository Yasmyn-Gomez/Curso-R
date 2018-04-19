# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos la función matrix() para crear una matriz de 4x2

#  Respuesta-item a:
A <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), ncol=2, nrow= 4, byrow=TRUE) 
A #construimos la matriz y la asignamos a A, usando byrow colocamos los valores por fila

#  Respuesta-item b:
dim(A[-2,]) #eliminamos la fila 2 y comprobamos que la dimension de A es de 3x2 usando dim()

#  Respuesta-item c:
A <- cbind(A[,1],sort(A[,2],decreasing=FALSE)) #usamos cbind() para colocar cada columna
A # y sort() para ordenar la 2 columna de forma creciente

# Respuesta-item d:
A[-4,-1] # al extraer la 4 col y 1 fila R nos devuelve un vector cuyos elementos son los restantes

matrix(A[-4,-1],ncol=1,nrow=3) #usamos matrix() para colocar los elementos resultantes
# en una matriz de 3x1

#  Respuesta-item e:
E <- A[3:4,1:2] #almacenamos en E los 4 elementos inferiores de la matriz resultante en c
E

# Respuesta-item f:
A[c(4,1),c(2,1)] <- -0.5*diag(E) #Asignamos a los elementos (4,2),(1,2),(4,1) y (1,1) de A
A #los elementos de la diagonal de E

B <- matrix(1:16,nrow=4,byrow=TRUE)
B
B[1:2,3:4]
