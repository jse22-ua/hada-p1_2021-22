## Por paridad de los bits de datos

Permite detectar si en el paquete hay errores en un número impar de bits 

Bits de datos 
00100101

Bits de paridad 
P

- Paridad par 
	001001011

- Paridad impar 
	001001010

## Por paridad por filas y columnas 
- Añadir a la trama un bit de paridad cuyo valor se determina para que el número total de bits 1 sea impar o par.
-  Solo se puede detectar un número impar de bits 
	- Se modifican dos bits cualesquiera 
	- Para la paridad es correcto

- Rendimiento aceptable cuando los bloques son grandes
- Se puede aumentar la capacidad de detectar errores 
	- poniendo mas de un bit de paridad