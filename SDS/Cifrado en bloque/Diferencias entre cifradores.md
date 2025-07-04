## Cifrador en bloque

Divide el texto en bloques
y cifra un bloque cada vez

Aplica una 
transformación fija
a cada bloque 
que solo depende de la clave 

Se basa en la red de Feistel

Texto claro -> algoritmo de cifrado -> texto cifrado
				+
			Clave de cifrado 


## Cifrador en flujo 


Toma el texto elemento a elemento
y lo va cifrando 
a modo de cadena

Aplica una
Transformación variable 
depende de
la clave 
el estado del cifrador

Se basa en el esquema de Verman

clave -> generador pseudoaleatorio ->secuencia cifrante

texto en claro -> XOR <- secuencia cifrante
			   |  |
			   \ /
		Elemento cifrado
