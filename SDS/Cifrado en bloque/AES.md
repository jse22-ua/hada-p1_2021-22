## Contexto 

Diseñado para reemplazar a DES

es una red [[Esquema Feistel]] 

Originalmente llamado Rijndael

Los procesadores modernos incluyen instrucciones para aceleración por HW
(AES-NI)

## Aritmética especial 

se realiza todas las operaciones sobre bytes 
- suma, producto, dividir sobre GF(2^8)
- implementación eficiente en SW

Los enteros usando aritmética modular (mod 2^n) no son un cuerpo 
- cuerpo -> conjunto que permite realizar sumas, resta, multiplicaciones y divisiones obteniendo resultados dentro de ese mismo conjunto

Los cuerpos de Galois (GF) se basa en aritmética polinomial y sí son cuerpos 
- GF(2^n) contiene 2^n elementos formando un cuerpo

## Estructura

Bloque de 128bits (16Bytes)

claves de 128, 192, 256 (AES-128,AES-192,AES-256)

el bloque representa una matriz 4x4Bytes

Consiste en 10,12,14 rondas 

Cada ronda en 4 funciones de transformación
- SubBytes -> tabla de 256 bytes
- ShiftRows -> shift de bytes
- MixColumns -> se puede expresar como XOR y tabla de 256bytes
- AddRoundKey -> XOR de bytes

## Implementación 

El descifrador no es idéntico al cifrador 

- Se puede modificar el descifrador para que siga la estructura del cifrado 
	- aunque requiere cambiar la expansión de clave

AES permite implementación en procesadores de 8 bits

un procesador de 32bits se puede expresar en operaciones sobre palabras de 32bits

Los procesadores de ahora incorporan instrucciones de AES-NI 
- Aumenta muchísimo el rendimiento

Es necesario evitar ataques de temporización y análisis de potencia 