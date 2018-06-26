# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos la funcion class() e is-dot y creamos un factor

#Respuesta-4a:usamos la funcion class() para identificar la clase de cada elemento dado
class(f1 <- array(data=1:36,dim=c(3,3,4))) #como f1 es un arreglo, está definido implicitamente
class(bar <- as.vector(f1)) #como bar es un vector tambien esta definido implicitamente
class(baz <- as.character(bar)) #baz es tambien un vector, pero de caracteres por lo que esta definido implicitamente
class(qux <- as.factor(baz)) #qux es un factor de los datos de baz por lo que esta definido explicitamente
class(quux <- bar+c(-0.1,0.1)) #bar es un vector numerico y le sumamos los datos de otro vector numerico por lo que
#quux es un vector numerico y por tanto esta definido implicitamente

#Respuesta-4b: Encuentraremos la suma del resultado de la llamada de las funciones is.numeric e is.integer
#para cada objeto definido en la respuesta 4a
dato1 <- is.numeric(f1)+is.integer(f1) #f1 es un arreglo con datos numericos y enteros
dato2 <- is.numeric(bar)+is.integer(bar) #bar es un vector con los datos de f1 por lo que es un vector
#con datos numericos y enteros
dato3 <- is.numeric(baz)+is.integer(baz) #baz es un vectorde caractees por lo que no posee datos "numericos" ni "enteros"
dato4 <- is.numeric(qux)+is.integer(qux) #qux es un factor creado con los datos de baz por lo que alamcena datos categoricos
#por lo que las funciones is.numeric e is.integer devolverán FALSE dando como respuesta cero
dato5 <- is.numeric(quux)+is.integer(quux) #como se vio en el item anterior quux es un vector con datos numericos, pero dado
#que el ultimo valor de c(-0.1,0.1) ya no es un entero, quux almacenara datos numericos mas no todos enteros

datos <- c(dato1,dato2,dato3,dato4,dato5) #almacenamos los calculos efectuados en un vector
fac <- factor(datos) #creamos un factor con los datos obtenidos
fac







