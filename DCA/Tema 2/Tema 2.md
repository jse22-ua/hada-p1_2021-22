## Preliminares
- Un equipo debe tener 
	- disciplina
	- uso de normas comunes conocidas por todos los componentes
- Desarrollamos un producto concreto con aparición de nuevas forma periódica 

## Consejo para crea equipo de desarrollo

[[Consejo para crea equipo de desarrollo]]

## Desarrollo. Uso de Ramas
- Cada grupo de desarrolladores fija
	- una política de creación
	- uso de ramas
- En primer lugar, tenemos una rama [[Rama master]]




### [[Rama de desarrollo (Master) vs Rama estable]]

### Resumen
![[t2_ramas.png]]
## [[Formato de etiquetas de versión]]

![[t2_formato_versiones 1.png]]

### Núcleo Linux
 Cada versión va precedida de la apertura de una "ventana temporal"
 - Un periodo de tiempo en que los desarrolladores puede incorporar añadidos

A las dos semanas se cierra la posibilidad de añadir nuevas características y se publica la "Release Candidate"
- 3.x.y-RC1
- 4.x.y-RC1
- …

Desde este punto, durante 7 versiones RC, solo se pueden corregir errores.

![[Linux_versionado.png]]

## Mozilla 

- Firefox 
	- Versiones estables cada 6 - 8 semanas
	- a partir de 2020 cada 4 semanas
	- acceso a 5 versiones
		- estable
		- beta
		- developer
		- nightly
		- ESR
- Rust
	- cada 6 semanas 
	- acceso a 2 versiones
		- beta 
		- nightly


## Versiones de desarrollo y depuración 

- Cuando aparezca un fallo en la fase de desarrollo se suelen depurar
- Después de estar listo para distribuir, lo que queremos es
	- que vaya mas rápido 
	- que use menos memoria
- nuestro proyecto debe de estar compilador con opciones especiales 
	- para ser depurado
	- para que vaya más rápido 
	- para que use menos memoria
- Para esto, una configuración automática que veremos será el CMake y también está Meson.