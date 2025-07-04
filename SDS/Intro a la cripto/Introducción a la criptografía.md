## [[Criptosistemas clásicos]]
### [[Escítala espartana]]
Vara
### [[Cifrado del César]]

sustitución 
cada letra se desplaza por otra desplazada un número fijo de posiciones
### [[Cifrado de Alberti]]

sustitución pero con clave secreta 

### [[Cifrado en el siglo XIX]]

combina trasposición y sustitución 
Wheatstone y Brazeries

### [[Siglo XX]]
#### [[Antes del ordenador]]
Segunda guerra mundial 
Enigma y Hagelin
#### [[Después del ordenador]]

1974 -> std DES
1976 -> clave pública 


## [[Elementos y terminología]]

### [[Elementos de la seguridad informática]]

Confidencialidad 
- mensaje secreto
Integridad
- Mensaje intacto leído autorizados
Disponibilidad 
- Servicio accesible
Autenticidad
- Puedes comprobar el origen del mensaje

### [[Terminología]]

Cifrado / descifrado -> no se puede decir encriptar
Texto claro / cifrado 
Criptosistema / cifrador
clave
espacio de claves -> N.º de claves que se necesitan para romper el criptosistema
Criptología -> Criptoanálisis (estudio para romper cifrado y obtener el mensaje cifrado) + Criptografía (estudio de como cifrar)


### [[Primitivas criptográficas]]

- Simétrica (clave privada)
	- Flujo
	- Bloque
- Asimétrico (clave pública)
	- Firma digital 
	- Intercambio de claves
- Auxiliares
	- Hash 
	- F. MAC
	- PRNG
	- PBKDF

## Cuestiones 

1. **¿Serían seguros los esquemas de criptografía clásica en la actualidad? ¿Por qué?**
	No, no sería seguro. La mayoría se podrían romper en segundos por fuerza bruta o análisis de frecuencia. Con ordenadores 

2. ¿Cuáles son las principales diferencias entre los algoritmos clásicos y los modernos basados en computación?
	Clásicos
	- Por sustitución y transposición 
	- Fácil de romper computacionalmente o manualmente
	- No usan claves complejas
	Moderno
	- Resisten ataques computacionales
	- Claves largas
	
3. ¿Qué es más probable, ganar el Euro millones o encontrar una clave de 128 bits?
	Más probable el Euro millón 
	tendrías que probar 2^128 combinaciones
	Con fuerza bruta sería imposible 
	
4. ¿Tiene algún sentido que se fije cierta posición (como aparece en muchas películas) al buscar un código o clave?
	No tiene sentido. Los espacios de claves en la vida real son enormes, intentar adivinar no es efectivo a menos que hay una vulnerabilidad o una pista concreta 