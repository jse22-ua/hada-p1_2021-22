El protocolo se basó HDLC (protocolo de Controlo del Enlace de Alto nivel). Por lo que, proporciona 3 servicios para el envío de paquetes del nivel de red (IP):
- Servicio no orientado a conexión y sin confirmación
	- rápido
	- sin control de flujo ni errores
	- (servicio tipo 1)
	- [[Tipos de servicios ofrecidos al nivel superior (nivel de red)#^36da99]]
- Servicio orientado a conexión 
	- Con control de flujo y errores
	- Mas lento
	- (Servicio tipo 2)
	- [[Tipos de servicios ofrecidos al nivel superior (nivel de red)#^896210]]
- Servicio no orientado a conexión con confirmación
	- (Servicio tipo 3)
	- [[Tipos de servicios ofrecidos al nivel superior (nivel de red)#^b74df7]]


## Formato de los paquetes LLC 
![[Pasted image 20230629161954.png]]

- DSAP
	- Punto de Acceso al servicio de Destino 
	- asociado al valor 170
- SSAP
	- Punto de Acceso al servicio de Origen
	- asociado al valor 170
- Control LLC 
	- asociado el valor 3
- Código de protocolo 
	- Indica tipo de información
	- asociado el valor 0
- Tipo paquete 
	- paquetes de datos IP tiene asociado el valor 2048
	- paquetes ARP valor 2054
