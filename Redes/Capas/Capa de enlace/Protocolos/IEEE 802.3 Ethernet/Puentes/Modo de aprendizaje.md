Se comprueba la MAC origen de cada paquete recibido en un puerto 
- Se encuentra en la tabla de reenvío?
	- Si 
		- El puente crea una entrada con la dirección MAC origen y el puerto donde se ha recibido
		- Cuando se envía a todos los puertos se genera una inundación 
- Cada entrada a la tabla de un puerto tiene un temporizador que mide desde que se creo la entrada
	- Si se recibe un paquete con una MAC origen por el puerto que se indica en la tabla 
		- El temporizador = 0
	- Si temporizador = valor máximo 
		- se elimina la entrada de la tabla

Para realizar aprendizaje se requiere una estructura de árbol simple [[Algoritmo de árbol de expansión (Algoritmo Spanning Tree)]] 