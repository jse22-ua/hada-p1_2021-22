Existe una única clave privada para encriptar y para desencriptar.

La clave debe ser conocida por el emisor y por el receptor

Los ataques que reciben suelen ser #fuerza_bruta

Son muy rápido y eficientes. 

Pueden cifrar grandes cantidades de información


## Principales algoritmos 

### AES

Sustituto avanzado de DES. No se ha encontrado una vulnerabilidad desde 1997.

Usa claves de 128, 160, 192, 224 o 256 bits.

Sus variantes son: AES-CBC, AES-CFB, AES-OFB, **AES-GCM**. 

Permite uso de Hardware específico (AES-NI). 
- Cifrador de bloques de 128 bits
- 100 - 150 Mbps
- Actualmente es el estándar utilizado.

### Blowfish

Tiene un tamaño de bloque de 64 bits 

Tamaño de clave variable entre 32 bits y 448 bits

#### Procedimiento

El mensaje de texto plano de 64 bits se divide:
1. Los 32 bits de la izquierda hacen XOR con el primer elemento de la matriz P para crear el valor P'
2. Se pasa por una función de transformación llamada F
	1. La función F divide una entrada de 32 bits en 4 bytes y los utiliza como índices de una matriz S
		1. Los resultados de la búsqueda se suman y XOR juntos para reducir la salida
3. Realizar XOR con los 32 bits derechos del mensaje para producir un nuevo valor F'
4. Los datos de procesamiento Izquierdo y derecho. Se intercambian y se repite 15 veces
5. Los valores P' y F' resultantes de esto se combinan XOR con las dos últimas entradas de la matriz P y se recombinan para obtener el texto cifrado de 64 bits.

P y S son calculadas a partir de la clave de usuario.
![[blowfish.png]]

### TwoFish

Mejor de Blowfish con cifrador de bloque de 128 bits 
Tamaño de clave hasta 256 bits

### ChaCha20

Cifrador de flujo 
Más rápido que AES cuando no se dispone de Hardware de cifrado.

Claves de hasta 256 bits

### Tiple DES (3DES)

Aplica DES tres veces con dos claves distintas 
(Más seguro que DES)
Clave de 168 bits
Bloques de 64 bits
Lento en comparación con los anteriores
Actualmente en desuso
- DES Inseguro porque usa solo clave de 56 bits 
	- Se rompe en menos de 24 horas
	- Los S-Boxes constan de una puerta trasera muy grave
		- Si cambias unos de ellos pueden debilitar DES

### TEA

Clave de 128 bits (16 bytes) (Clave 4x32 bits) + texto plano y resultado de (2x32 bits)
Bloque de 64 bits
Obsoleto

Hace XOR y desplazamiento.