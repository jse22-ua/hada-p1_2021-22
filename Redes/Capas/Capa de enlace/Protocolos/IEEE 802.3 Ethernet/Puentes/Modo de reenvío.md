Se comprueba la dirección MAC destino de cada paquete Ethernet que llega al puerto 
- Existe en la tabla de reenvío?
	- Si 
		- encuentra en la tabla de reenvío 
		- El puente reenvía el paquete al puerto asociado 
			- siempre que no sea el mismo que el que lo envió
	- No
		- el paquete se reenvía a todos los puertos excepto del que salió
- Los que tienen dirección destino la de broadcast se reenvía a todos menos al origen