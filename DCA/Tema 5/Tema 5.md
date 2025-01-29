
## `Make`

La herramienta `make` simplifica el proceso de compilación y recompilación.  Tiene en cuenta las fechas de la última modificación de cada fichero.

El `make` es un generador de órdenes en base a marcas de tiempo.

Con `-d` nos información de lo que hace y porqué
Con `-k` sigue la ejecución aunque haya errores

Al invocar `make` podemos darle valores a variables
- Por ejemplo `make CC=clang` 
	- Este cambia el compilador de C guardado en la variable CC.
	- El compilador de C++ se suele guardar en CXX.

`make` puede lanzar compilaciones en paralelo
- usando `-j` seguido de un número de trabajos en paralelo
	- ejemplo
	- `make -j2`
Esto puede producir fallos a la hora de especificar dependencias, a veces no es lo mismo lanzarlo de manera secuencial que en paralelo.
![[t5_make.png]]
### [[Makefile]]

![[t5_makefile.png]]

### Multinivel
Si el proyecto se puede dividir en varios módulos estando el código en un subdirectorio
Cada subdirectorio tendrá su `Makefile` y el `Makefile` de la raíz gestiona los `sub-Makefile` de cada directorio
El `make` permite llamadas recursivas. 
- Aunque no es recomendable porque introduce complejidad y lentitud.
- Mejor solo un `makefile` en la raíz
![[t5_makefile_2.png]]

## [[Ccache]]

## [[Distcc]]