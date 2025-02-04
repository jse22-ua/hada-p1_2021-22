Algoritmo matemático unidireccional utilizado para asignar datos de cualquier tamaño a una cadena  de bits de un tamaño fijo. 

## Propiedades
- Velocidad
	- Rápido calculando valor hash para una entrada dada
- Determinismo:
	- Independientemente del tamaño de la info, la función HASH siempre devuelve
		- la misma salida para una entrada dada 
		- del mismo tamaño
- Resistencia a pre-imagen
	- A partir del valor hash no puedes obtener el mensaje original 
- Resistencia a la colisión 
	- Difícil encontrar dos mensajes distintos con el mismo hash
	- Difícil de encontrar un mensaje alterado del original que tenga el mismo hash
		- Ataque de cumpleaños
			- La posibilidad de que dos elementos compartan una característica (como el valor hash) son mucho mayores de lo que parece a simple vista
- Efecto avalancha
	- Un mínimo cambio en la entrada provoca un cambio masivo en la salida

## Usado en 

- Almacenamiento de contraseñas
- Firma digital
- Protección de la propiedad intelectual
- Peritaje informatico
- Deteccion de malware
- Comprobacion de la integridad de descargas en la red
- Blockchain 
- Transferencia p2p de archivos (Torrent, Emule)

## Principales Algoritmos 

Nota: los bits son de salida
Las colisiones tienen que ver con el tamaño de salida (desde 256 bits no parece haber colisiones)

- MD5
	- 128 bits
	- tiene colisiones
		- desuso
	- divide entrada de 512 bits
	- Salida de 128 bits
	- Desplazamiento 
	- encadenamiento de variables 
- SHA1
	- 160 bits
	- colisiones
		- desuso
- SHA256
	- 256 bits
	- No tiene colisiones
	- Estándar actual
- SHA512
	- 512 bits 
	- No tiene colisiones
	- Futuro estándar
- SHA3
	- de 224 bits a 512 bits
	- Más segura y lenta que sus predecesores sin ayuda de Hardware
