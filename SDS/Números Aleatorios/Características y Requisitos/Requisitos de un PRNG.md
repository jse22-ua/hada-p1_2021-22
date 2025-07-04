## Aleatoriedad
- Los test buscan 
	- Uniformidad
		- Es aleatoria a lo largo de toda la secuencia
	- Escalabilidad 
		- Es aleatoria también al extender su longitud
	- Consistencia 
		- Es aleatoria para todas las posibles semillas
- Test habituales
	- Frecuencia 
		- Distribución de patrones
	- Runs 
		- Grupos de 1s o 0s consecutivos
	- Poker
		- Elementos de 8 bit, 16 bit, etc.
	- Test de Maurer
		- Asociado a la compresibilidad
	- TestU01
		- Suite de tests 
			- Bueno pero lento
	- PracRand 
		- Suite de test 
			- mas rápida y moderna

## Impredecibilidad
- Predictiva
	- Imposible determinar el siguiente bit
- Retroactividad 
	- Imposible determinar la semilla a partir de los bits producidos

## Semilla
- Impredecible 
- valor aleatorio
	- el PRNG extiende esa aleatoriedad a una secuencia más larga