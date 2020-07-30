## Texto sin acentos

## Estas son algunas opciones para explorar tus paquetes instalados

#' Sabemos que R busca la ubicacion de los paquetes en la ruta dada por:
.libPaths()

## Confirmemos que en efecto el segundo elemento de nuestro resultado
## corresponda con la libreria que R toma por defecto para instalar paquetes
.Library
identical(.Library, .libPaths()[1])

## Que ocurre? Tenemos algun problema con la ruta?
library(fs)
identical(path_real(.Library), path_real(.libPaths()[1]))

#' Paquetes instalados
## Obten la lista de paquetes instalados y guardalos en un objeto tibble()
library(tidyverse)
ipt <- installed.packages() %>%
  as_tibble()

## Cuantos paquetes tienes instalados?
nrow(ipt)

#' Exploremos los paquetes instalados

## Contemos algunas cosas!
##   * Cuantos de ellos corresponden a cada tipo de Priority?
ipt %>%
  count(LibPath, Priority)

##   * Que proporcion de ellos necesita ser compilado?
ipt %>%
  count(NeedsCompilation) %>%
  mutate(prop = n / sum(n))

##   * En que version de R fueron escritos? Cuantos hay de cada version?
ipt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))


#' Actividades adicionales

## Cuantos paquetes pertenecen ya sea a paquetes base o recomendados? Son todos
## los que tenemos instalados?
all_default_pkgs <- list.files(.Library)
all_br_pkgs <- ipt %>%
  filter(Priority %in% c("base", "recommended")) %>%
  pull(Package)
setdiff(all_default_pkgs, all_br_pkgs)

## Usa el argumento `fields` de la funcion installed.packages() para obtener
## mas informacion sobre los paquetes instalados
ipt2 <- installed.packages(fields = "URL") %>%
  as_tibble()
ipt2 %>%
  mutate(github = grepl("github", URL)) %>%
  count(github) %>%
  mutate(prop = n / sum(n))
