Se encarga de identificar las estaciones que intercambian paquetes de nivel de enlace en un medio físico.

Consiste en asignar secuencias de bits únicas a cada estación. La cantidad de bits (b) asociados a una dirección nos indica el rango de direccionamiento ( #MAC)
- Ejemplo 
	- b = 5 tendíamos 2^5 estaciones  identificadas desde 00000 a 11111

## Tipos de direccionamiento 
- Implícito 
	- No hace falta indicar la estación origen y destino que intercambian paquetes
	- ejemplo 
		- [[Redes punto a punto]]
- Explicito 
	- Si hace falta especificar origen y destino
	- ejemplo
		- #Ethernet
		
(no importantes)
- Preselección 
	- emplea un contador que selecciona secuencialmente cada una de las estaciones destino 
	- solo puede enviar paquetes a el destino cuando se le conceda el turno al destino 
- Master único
	- Una estación master se puede comunicar con estaciones esclavo
	- unidireccional 
- Master múltiple
	- La master único pero el esclavo puede comunicarse con el master 
	- bidireccional 
