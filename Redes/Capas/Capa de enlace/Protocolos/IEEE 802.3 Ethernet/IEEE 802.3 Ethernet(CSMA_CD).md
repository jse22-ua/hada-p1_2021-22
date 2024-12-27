La red Ethernet se caracteriza por emplear un [[Medio Físico o Capa Física]] compartido con todas las estaciones #bus_común 
Emplea [[Cable coaxial]], [[Cable par trenzado]] o [[Fibra óptica]].
Es semidúplex [[Transmisión de datos digitales#^4d6cba]] y el mecanismo [[CSMA_CD]]

## Ethernet 10Base2
Velocidad-Señalización-Medio físico
10 = velocidad (Mbps, si fuera 10G seria Gbps)
Base = [[Señalización en banda base]] ([[Codificación Manchester]])
Medio = Cable coaxial fino (es el que permite hacer apróx 200 metros)

La 10Base5 emplea un cable grueso permitiendo 10Mbps a 500 metros

10Base2 y 10Base5 desaparecen del mercado por la introducción de UTP
- más tolerancia a fallos
- Facilidad de implantación 
- mejores prestaciones

## Formato del paquete IEEE 802.3
![[Pasted image 20230629170226.png]]

El MTU (tamaño máximo de paquete IP) es 1492 bytes

- Preámbulo 
	- Secuencia de 7 bytes 1010101010
- SFD
	- Delimitador de inicio de trama 10101011
	- [[Delimitación de tramas (o paquetes)]]

- MAC destino/origen 
	- Identificador de 48 bits por cada equipo 
- Longitud 
	- Tamaño del campo de datos del paquete (máx. 1500)
- CRC 
	- [[Detección de errores por (CRC) Código de redundancia Cíclica]] 32 bits

## Formato de paquete Ethernet (DIX)
- No emplea capa LLC 
- Permite introducir del datagrama IP en el paquete nivel MAC

![[Pasted image 20230629171034.png]]

- Tipo 
	- paquetes de datos IP tiene asociado el valor 2048
	- paquetes ARP valor 2054