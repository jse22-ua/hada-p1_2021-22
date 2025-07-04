## [[Características y Requisitos]]

### [[Uso de números aleatorios]]

aplicaciones : distribución y generación de claves (RSA, sesión)
Auth reciproca 
Cifrador Flujo

Necesario
Aleatoriedad 
Impredecibilidad -> no se puede predecir el siguiente bit probabilidad del 0,5
Uniformidad estadística
Independencia
### [[Tipos de generadores Aleatorios]]

Aleatorios -> lentos, costosos
Pseudoaleatorios -> basado en algoritmos, eficientes

### [[Generadores pseudoaleatorios (PRNG) ]]
Usan semilla para secuencia larga
Seguridad depende del 
periodo -> longitud de la secuencia que no se repite
tamaño de la semilla -> N.º de semillas
Impredecibilidad

### [[Requisitos de un PRNG]]
Uniformidad 
Escalabilidad
Consistencia 

Test habituales: Frecuencia, runs, poker, Test de Maurer, TestU01, PracRand

Imposible predecir el siguiente bit

Semilla 
Impredecible a partir de la secuencia 
## [[PRNG populares]]

### [[Generador congruencial lineal]]

Xn+1 = (a·Xn +c) mod m

4 valores consecutivos
fácil de romper mediante ecuaciones lineales

Util para estadistica 
No para cripto

### [[Generador Blum Blum Shub]]

Imposible establece siguiente bit tiempo polinomial 
Parecido a clave pública 
Lento 
Seguro
Secuencias cortas: claves, valores pequeños, desafíos

### [[LFRs]]

Predecible después de 2n
Buen periodo -> longitud de secuencia antes de repetirse 
Fácil de implementar 

Editar con combinación o filtración para más seguro

### [[PRNG basados en otras primitivas]]
- Cifradores en bloque (CTR, OFB), ANSI X9.17 con triple DES, Funciones Hash
### [[PRNG y cifradores en flujo]]

Usa XOR, solo se comparte la semilla, no la secuencia entera

## Cuestiones

### ¿Qué diferencias hay entre PRNG criptográficos (seguros) y los que no lo son?

Que los que son seguros no se pueden predecir en un tiempo lineal o polinómico
Resistentes ante ataques. La salida no dice nada sobre la semilla

Son predecibles los inseguros, si se conoce la secuencia se conoce parte de la secuencia o semilla [[Generador congruencial lineal]]

### ¿ En qué situaciones sería útil un PRNG?
- generación de claves, nonce, secuencias cifrante
- Simulacion, juegos
### ¿ Cuál sería un PRNG criptográfico adecuado?
- Blum blum shub (bbs)
	- seguro 
	- muy lento 
- PRNG basado en funciones hash o AES
	- Rapido
	- Seguro 
- ANSI X9.17
	- sistema financiero
