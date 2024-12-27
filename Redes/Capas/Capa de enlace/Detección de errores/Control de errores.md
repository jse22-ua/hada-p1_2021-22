Los paquetes pueden sufrir errores durante la transmisión por el [[Medio Físico o Capa Física]]. Por lo que, es preciso detectarlos y subsanarlos.

Forma de medir los errores 
- Tasa de error = N.º de errores / N.º bits transmitidos
- La variación de la tasa de error depende de
	-  Tipo de medio de transmisión
	- Entorno del medio de transmisión
	- [[Velocidad de transmisión]]
	- Calidad de servicio del medio físico
	- Horario 

## FCS( Frame check sequence) : Secuencia de verificación de trama(SVT)

La detección se consigue con un conjunto de datos que suelen añadirse en la cola del paquete de enlace y permite determinar el paquete ha sufrido algún error

### Tipos de información en la FCS
- Códigos de detección de error 
	- Procedimientos que determinan un valor de FCS que permiten detectar si el paquete presenta algún bit erróneo. 
	- No identifica el bit 
	- El receptor avisa al emisor de que es incorrecto y lo reenvía.
	- Se utiliza cuando el tiempo de reenvió es menor que el de detección de los bits erróneos y corregirlo
	- ejemplo
		- CRC
- Código de corrección de error
	- Detecta si un paquete presenta algún bit erróneo
	- lo identifica 
	- Lo corrige el receptor 
	- No se suele usar 
		- Retardo > reenvío
	- Se usa cuando el retardo del reenvío sea bastante mayor como en comunicación con sondas del sistema solar 
	- ejemplo 
		- Hamming


## Métodos de detección de errores

Dos métodos:
- [[Detección de errores por paridad de bits]]
- [[Detección de errores por (CRC) Código de redundancia Cíclica]]
