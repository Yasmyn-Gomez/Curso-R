# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos la función rep()

#Respuesta al item d

l <- length(sort(rep(x=c(-1,3,-5,7,-9), times=10, each=2),decreasing=FALSE))
l #usando el vector creado en el item anterior hallamos su longitud y la asignamos a l
d <- sort(c(6:12,rep(5.3,3),-3,seq(from=102,to=l,length.out=9)),decreasing=FALSE)
d
length(d) ##Mostrará la longitud del vector pedido