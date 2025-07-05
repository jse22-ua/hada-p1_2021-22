
Objetivo: obtener tabla de casos de prueba a partir del conjunto programado P. Obteniendo el máximo número de defectos con el menor número de pruebas. 

`Control flow testing`: método del camino básico
1. Construcción del CFG
2. Selección de caminos 
	1. calculo cc 
	2. caminos independientes
3. Obtención de casos de prueba

El proceso de diseño que es el más importante, es el que va a decir. La idea es seleccionar, comportamientos a probar.

Tenemos que proporcionar el conjunto T, buscar el conjunto T, está acotado, no es infinito por lo que hay que encontrar y seleccionar. En los que supuestamente vamos a encontrar un problema. 

Un comportamiento no es mas que una tupla de datos de entrada + resultados esperados. 
Como vamos a materializar ese comportamiento? 
con una tabla:
- columna de entradas + columna de salida

No podemos hacer pruebas exhaustivas (N.º infinito de pruebas).

Un método de diseño de pruebas pretende rellenar esa tabla. 

## Como se rellena esa tabla

### De que cosas puedo partir 

Mi punto de partida es el conjunto S (Lo que quiere implemente el cliente) y el conjunto P (Lo que está implementado)

Dos formas:

- Una partiendo de conjunto S (Caja Negra)
- Una partiendo del conjunto P (Caja blanca)

Decidir cuales métodos usar.

## Métodos estructurales o de Caja Blanca

Trabajan con el conjunto P, por lo tanto cualquier solución que dentro del conjunto P
Por lo que, el conjunto T (la tabla), puede estar más cerca de S o más lejos de S. Pero todos estará dentro de P. Haciendo que el comportamiento probado esté o no especificado (en el conjunto S).

Por lo que obtendremos los valores de entrada de la implementación (conjunto P)
No obstante, el resultado esperado se obtiene siempre de la especificación.

Es imposible darse cuenta de que faltan cosas por implementar. Porque lo único que veo es el conjunto P. 

Tenemos un código que alguien ha implementado, nos toca sacar la tabla.

Pasos:
1. Parto del conjunto P (Código) donde están implementados todos los comportamientos 
	1. Es complicado ver los comportamientos solo viendo código
	2. No se puede hacer una selección razonable
2. Por lo que, convertimos el código en algo representativo que contenga los mismos comportamientos donde me resulte más fácil ver. 
	1. suele usarse un grafo
	2. va a representar una tupla, habrá una entrada que fuercen a una salida
	3. Más fácil de seleccionar (efectividad)
		1. Cada método tiene un objetivo distinto, así que dependiendo del método, tenemos en mente el objetivo para seleccionar los caminos.
3. Una vez seleccionados -> se obtienen los casos de prueba (Eficiencia)
	1. si mi objetivo es A sacaré tantas filas y
	2. si mi objetivos es B sacaré tantas filas x

Si tenemos dos tablas distintas con x y y filas no significa que la que más filas tenga sea más eficiente.

Aunque probemos todas las posibles entradas no podremos detectar si hay algún camino sin probar. Podría darse que ninguna entrada se diera a un camino en específico.

Usamos un grafo dirigido, con un sentido. Cada nodo va a representar 0 o más sentencias secuenciales (es decir, sentencias que se ejecutan una detrás de otro) y solo tendrá una condición para ese nodo y las aristas o arco representan que un nodo va antes o después de otro (el flujo de ejecución). 

Cada nodo tendrá un valor único en su etiqueta, si tiene una condición se apuntará a la derecha. 
Las aristas representan el flujo de ejecución entre dos nodos. 
- si un nodo contiene una condición las aristas que salgan de hay irán acompañadas de "T" verdadero o "F" false.

### Por ejemplo

![[Pasted image 20250205113505.png]]

El 4 es el final de sentencia.

En el código hay dos tipos de sentencias:
- Sentencia de asignación (se ejecutan de forma secuencial)
	- No tiene porque ser un paso
- Sentencia de control (if, bucle, ...)

Tengo un método A que llama a otro método B, la invocación desde el punto de vista de mi codigo, es una sentencia secuencial. 

Un unico nodo inicial (1) y termina en un unico nodo final (final de sentencia)

![[Sin título.png]]

la llamada a una función cede el control a dicha función. Cuenta como sentencia secuencial. 
Un camino va desde el primer nodo al último pasando por varios nodos si hace falta. En una unidad de programa puede haber muchos caminos incluso infinitos. 
Unos valores de entrada en especifico provocan que se ejecute un camino en específico. 
### Método del camino básico

todas las condiciones y las sentencias se han recorrido una vez.

Un camino independiente, es un camino que recorre un nodo o una arista que no sea recorrido en un camino anterior. El siguiente camino lo tengo que elegirlo de modo que recorra un nodo que no había recorrido antes.

El N.º de caminos independientes determina el N.º de filas de la tabla. Cada fila detectará defectos en un determinado subconjunto de sentencias del programa. 

Pasos
1. Tengo que construir el grafo CFG
2. Calculo N.º de caminos independientes que se que va a haber (CC complejidad ciclomática = N.º arcos - N.º aristas + 2) 
3. Buscar los caminos dentro del grafo, elegirlo
4. Cada camino convertirlo en comportamiento (entrada con datos concretos y salida esperada)


CC complejidad ciclomática = Numero de arcos - numero  de nodos + 2 
- Si no hay saltos incondicionales
	- CC = N.º de regiones
	- CC = N.º de condiciones + 1 

El valor indica el número de caminos independientes máximo en el grafo. 

Complejidad lógica cuando hay demasiadas sentencias de control.
Cuanto mayor sea la complejidad más esfuerzo requiere mantenerlo y más esfuerzo de pruebas.

Se puede reducir la complejidad refactorizando. Incrementando el nivel de abstracción. (modularizar)

Si hay una CC > 10 hay una complejidad lógica muy alta.

La CC es una cota superior, no me dice el N.º. de caminos independientes, habrá como mucho 7 caminos, pero a lo mejor con 5 puedes recorrer todos los nodos y aristas. Con tal de no superar la CC es suficiente.

Algunas veces no es bueno ir al mínimo.

![[bb_cajanegra_grafo.png]]

![[Pasted image 20250205122824.png]]

No puedo juntar el 1 y el 2 porque cuando vuelva significaría que tendría volver a asignar las variables otra vez.

![[Pasted image 20250205123056.png]]
