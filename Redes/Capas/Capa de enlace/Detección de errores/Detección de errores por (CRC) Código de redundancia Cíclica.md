- Asocia un bloque de datos a un polinomio en x
	- 11101110(8bits) 
		- x^7+x^6+x^5+x^3+x^2+x
- determina la SVT mediante operaciones y propiedades de polinomios
	- D(x) = polinomio asociado a los datos a transmitir
	- G(x) = polinomio generador
		- Dado un polinomio generador de grado r es posible detectar 
			- errores en 2 bits
			- bits consecutivos erróneos (errores de ráfaga) de longitud < r
			- un numero impar de bits
		- El primer y ultimo bit deben tener valor 1
		- Estandares
			- CRC-12
			- CRC-16
			- CRC - CCITT
			- CRC-32
	- T(x) = polinomio asociado a los datos transmitidos por el emisor
	- ![[Pasted image 20230628173158.png]]
	- ![[Pasted image 20230628173529.png]]
	- El receptor realiza la operación división de la secuencia recibida
	- ![[Pasted image 20230628173245.png]]


## Ventajas 
- Escasa complejidad 
- Gran rapidez 