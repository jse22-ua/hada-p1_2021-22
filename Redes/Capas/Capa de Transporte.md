La capa de Transporte hace de interfaz entre la capa de aplicación y la de red. Gestiona comunicaciones #extremo_a_extremo entre equipos de internet.

## Protocolos 
- [[Protocolo TCP]] -> protocolo de control de transmisión 
	- Fiable y orientado a conexión. 
	- Transmisión de secuencia de bytes de origen a destino 
	- Sin errores
	- Algoritmos de control de errores y del flujo
	
- [[Protocolo UDP]] -> protocolo de datagramas de usuario
	- No fiable y no orientado a conexión
	- Para aplicaciones sin necesidad de control de secuencia ni flujo
	- Prioriza la prontitud a la fiabilidad 
	- Ejemplo: Transmisión de voz y vídeo

Ambos protocolos emplean un número de #puerto para identificar conexiones entre maquinas. Este va desde 0 al 65535. Además, identifica un buffer de memoria donde se almacena la información contenida en los paquetes IP. 
La comunicación de la [[Capa de Aplicación]] se estable a nivel de transporte y se identifica el puerto de origen y el puerto destino.

## Ejemplo
![[Pasted image 20230620190444.png]]