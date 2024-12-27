La Capa de Enlace especifica los mecanismos para el intercambio de información en un medio físico.

![[Pasted image 20230627184926.png]]

Esta capa permite establecer un enlace lógico libre de errores entre entidades de la capa de red. Aunque el canal físico conste con alguna tasa de error.

## Objetivo
- Fragmentación de paquetes
	- A los que se le añaden bits de información de control
- Numeración de paquetes
	- Para que en el otro extremo puedan reagruparse
- Reconocimiento de la información
	- el emisor podrá comprobar si un paquete ha llegado correctamente
	- Cada vez que el receptor recibe un paquete, le envía una pequeña trama de información al emisor indicando que se ha enviado correctamente
- Reenvío de paquetes erróneos 
	- En caso de paquetes erróneos el emisor reenvía datos perdidos o erróneos 
- Control de flujo
	- Para evitar que emisores de información a velocidad elevada sature a receptores que operan a menor velocidad
	- Establece mecanismos de sincronización y control de flujo

## Servicios ofrecidos al nivel superior ([[Capa de red]])
La capa de enlace realiza una serie de servicios a la capa de red. Estos se pueden clasificar por tres [[Tipos de servicios ofrecidos al nivel superior (nivel de red)]] 

## Funciones del nivel de enlace
También realiza una serie de funciones para realizar los servicios previamente mencionados. 
[[Funciones del nivel de enlace]]

## Protocolos de nivel de enlace 
Existen varios tipos de protocolos, todos ellos se basan [[Normas IEEE 802.x]]. Estos son:
- [[IEEE 802.2 Protocolo de Control del enlace Lógico(LLC)]]
- [[IEEE 802.3 Ethernet(CSMA_CD)]]
- IEEE 802.5: #token_ring (Anillo con testigo)
- [[IEEE 802.11x LAN Inalámbrica]]
- [[IEEE 802.1Q LAN Virtual(VLAN)]]

## Ejemplo 
- Ethernet