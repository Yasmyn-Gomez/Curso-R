# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta : Usamos la función diag() y solve() para calcular la inversa de una matriz

A <- diag(c(2,3,5,-1)) # creamos una matriz diagonal con los elementos dados
A

C <- solve(A)%*%A-diag(4) #como la matriz A es inversible usamos solve() para hallar su inversa

# podemos usar el condicional if() para verificar que diag(rep(0,4))==C*diag(4)
diag(rep(0,4))==C