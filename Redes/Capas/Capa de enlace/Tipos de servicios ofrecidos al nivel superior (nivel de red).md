Existen tres tipos de servicios que la capa de enlace le puede proporcionar a la [[Capa de red]]:
- Servicio **sin conexión** y **sin reconocimiento** ^36da99
	- La estación origen envía paquetes de información independientes a la máquina destino sin pedir que le confirme
	- Transmisión más rápida
		- Retardo más perjudicial que los errores
	- Baja tasa de errores (Medio físico )
	- El control de errores se le delega a los niveles superiores 
		- Esto permite un nivel de enlace rápido
		- No precisa de confirmación

- Servicio **sin conexión** y **con reconocimiento** ^b74df7
	- Envía un paquete, está le envía una confirmación 
	- Se utiliza cuando el nivel físico presenta errores no despreciable
	- tasa de error considerable (Medio físico)
	- Transmisión fiable
	- ejemplo 
		- redes inalámbricas con muchas interferencias

- Servicio **con conexión** y **con reconocimiento** ^896210
	- Para la conexión reserva recursos 
		- ejemplo 
			- buffer, variables...
	- Se envían paquetes de datos enumerados
		- Si el receptor los recibe le enviará una confirmación
		- Sino se reenviarán los mismo datos
	- Una vez enviados se libera la conexión 
	- El más fiable
	- Tasa de error considerable (Medio físico)

