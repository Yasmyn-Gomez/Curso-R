# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos la función diag() y solve() para calcular la inversa de una matriz

A <- diag(c(2,3,5,-1)) # creamos una matriz diagonal con los elementos dados
A

C <- solve(A)%*%A-diag(4) #como la matriz A es inversible usamos solve() para hallar su inversa
all(diag(C)==0) #ya que cada elemento de C menos la diagonal es diferente de cero, comprobamos
# que los elementos de su diagonal sean cero y dado el caso la función all nos dará TRUE
