# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos las funciones ls() para conocer los elementos de un paquete y environment()
# para mostrar el entorno al que pertenece una función

#Respuesta-1a:
#Para nombrar los elementos del paquete "methods" usamos ls("package:methos")
# lo cual nos devuelve una cadena, para identificar los primeros 20 elementos de esta escribimos
ls("package:methods")[1:20]
#Para conocer el número de elementos de la cadena usamos la funcion length()
length(ls("package:methods"))

#Respuesta-1b:
#Para conocer el entorno de una función usamos la  funcion enviroment(function_name), asi
environment(read.table) #nos mostrará el entorno de la función read.table
environment(data) #nos mostrará el entorno de la función data
environment(matrix) #nos mostrará el entorno de la función matrix
environment(jpeg) #nos mostrará el entorno de la función jpeg

#Respuesta-1c:
#Para comprobar que la funcion "smoothScatter" usamos la comparación entre vectores y como
#ls("package:graphics") nos devuelve un vector cuyos elementos son cadenas, comparamos cada uno
#de sus elementos usando "==" lo cual nos devolverá un vector de valores lógicos y si este
#contiene a "smoothScatter" la función any() debería devolver el valor lógico TRUE
any(ls("package:graphics")=="smoothScatter")
