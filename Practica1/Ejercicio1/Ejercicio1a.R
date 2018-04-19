# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Creamos una secuencia decreciente en 0.3 del 5 al -11 y luego invertimos
# los valores del vector creado

#Respuesta al item a

x <- seq(from=5, to=-11, by=-0.3) #asignamos a x los valores de la secuencia
x

#Respuesta al item b (usando el vector creado en a.)

x <- sort(x, decreasing = FALSE) #usamos la funcion sort() para "invertir" el orden de x
x # esto porque x es un vector decreciente y luego lo asignamos al mismo x
