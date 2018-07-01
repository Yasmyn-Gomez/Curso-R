# Nombre : Gomez Romero, Yasmyn
# Código : 20160554I
# Respuesta :Usamos la funcion factor() para crear facores y combinamos factores

#Respuesta-3a:
#Creamos un vector para el sexo de cada persona
sexo <- c(rep("H",20))
sexo[c(1,5:7,2,14:16)] <- "M" #asignamos M a las posiciones de cada mujer

#Creamos un vector para el partido de cada persona
partido <- c(rep("Nac",20))
partido[c(10,20)]
partido[c(1,4,12,15,16,19,6,9,11,10,20)] <- c(rep("Lab",6),rep("Ver",3),rep("Otro",2))
#Asignamos los partidos correspondientes a cada posicion

#Respuesta-3b: Creamos los factores para los vectores sexo y partido
sexo.fac <- factor(sexo) #Creamos el factor para el vector sexo
partido.fac <- factor(x=partido,levels=c("Lab","Nac","Otro","Ver","Mao"))
#Creamos el factor para el vector partido y añadimos el argumento levels para poder añadir
#el nivel del partido Maori que no aparece en el vector partido. No usamos el argumento ordered
#pues no es necesario en este caso. R ordena los niveles por orden alfabetico si no introducimos
#el argumento levels y los deja como fueron introducidos si usamos este argumento.
partido.fac[sexo=="H"] #Devolvemos el factor de los partidos elegidos para los cuales los
#participantes son hombres.
sexo.fac[partido=="Nac"] #Devolvemos el factor de los generos para los cuales el partido
#elegido es el Nacionalista("Nac")

#Respuesta-3c:
#Creamos dos nuevos factores con los nuevos datos dados
#Para los partidos
new1 <- c("Nac","Mao","Mao","Lab","Ver","Lab")
new1.fac <- factor(new1,levels=levels(partido.fac))
partido.new <- levels(partido.fac)[c(partido.fac,new1.fac)]
partido.new.fac <- factor(partido.new,levels=levels(partido.fac)) #factor con los nuevos datos

#Para el sexo de cada persona
new2 <- c("H","H","M","M","M","H")
new2.fac <- factor(new2,levels=levels(sexo.fac))
sexo.new <- levels(sexo.fac)[c(sexo.fac,new2.fac)]
sexo.new.fac <- factor(sexo.new,levels=levels(sexo.fac)) #factor con los nuevos datos

#Respuesta-3d:
confianza <- c(93, 55, 29, 100,52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 40, 56, 45, 64, 
               31, 10, 29, 40, 95, 18, 61) #vector que nos expreza la confianza que tiene cada
#persona en que el partido laboralista gane mas escaños que el nacionalista

br <- c(0,30,70,100)
label <- c("Bajo","Moderado","Alto")
label.fac <- cut(confianza,breaks=br,include.lowest=T,right=T,labels=label) #usamos cut para agrupar los datos del
#vector confianza, y ya que no están incluidos los valores de 30 y 70 en este vector, no habrian errores
label.fac[partido.new.fac=="Lab"] #al ejecutar esta linea notamos que los partcipantes que 
#apoyan al partido laboralista confian relativamente en que el partido que defienden gane más escaños que el nacionalista
label.fac[partido.new.fac=="Nac"] #al hacer lo mismo con los participantes que apoyan al partido nacionalista
#notams que estos no poseen mucha confianza en su partido
