#' En cual directorio va a buscar R los paquetes?

# Prueba con .libPaths(), .Library


#' Paquetes instalados

## Usa installed.packages() para obtener los paquetes instalados
## Si lo deseas puedes observar estos datos en un data frame o tibble
## Recuerda utilizar View(), dplyr::glimpse(), o una funcion similar
## para explorar los datos

## Cuantos paquetes tienes?


#' Explora los paquetes que tienes instalados

## Puedes contar algunas cosas! Algunas ideas:
##   * Ordena los paquetes de acuerdo con su LibPath, Priority, o ambos
##   * Cuantos de ellos necesitan ser compilados?
##   * En que version de R se construyeron?

## Para los amantes del tidyverse, aqui hay algunas pistas
# data %>% count(var)
# data %>% count(var1, var2)
# data %>% count(var) %>% mutate(prop = n / sum(n))

#' Algunos puntos para reflexionar

## Puedes tomar notas para ti mismo sobre puntos importantes del
## ejercicio anterior, algunas sugerencias son:
##   * El numero de paquete de R base y los paquetes recomendados
##     tienen sentido para ti?
##   * Como se relaciona el resultado de .libPaths() con el de .Library?


#' Actividades adicionales

## Si aun te queda tiempo hagamos estos ejercicios...

## Todos los paquetes que encontramos en .Library son de R base o recomendados?
## Como es el estilo de los nombres de los paquetes instalados? (estan escritos
## con minusculas? Contienen signos de puntuacion . - _ ? ), etc.
## Usa el argumento `fields` de installed.packages() para obtener mas 
## informacion y explora los datos.