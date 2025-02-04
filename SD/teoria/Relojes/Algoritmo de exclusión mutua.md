Seguridad -> solo ejcuta un proceso en la region critica en un momento dado 
pervivencia -> todos los procesos que lo solicitan se le concede la entrada salida en la region critica en algun momento 
- Evitar abrazo mortal (deadlock), inanicion (starvation)
Ordenación -> la entrada en la región critica debe concederse según "suceder - antes"

## Servidor central 

el servidor central concede permisos en forma de token que concede acceso a la seccion critica y al salir la seccion critica el proceso devuelve el token al servidor.

Teniendo en cuenta que no hay caída y no se pierde mensajes 
se cumple seguridad y pervivencia y la ordenacion está asegurada con el orden de llegada (si hay caida o fallo no)

Problemas 
- Todas las solicitudes se envian al servidor (recurso crítico) -> cuello de botella
- si hay caida o fallo de un proceso en la Seccion critica (SC) 
	- se detecta con temporizadores 
	- requisa el token

2 msg de entrada a la SC
1 msg de salida de la SC

## Algoritmo de anillo

Se da a cada proceso la dirección de su vecino 
el token siempre está circulando por el anillo
cuando un proceso recibe el token 
- si no quiere entrar en la SC
	- lo envia al vecino
- Si quiere retiene y al terminar se lo envia al vecino
Tolerancia a fallos
- perdida de token
	- deteccion y regeneracion
- caida de un proceso del anillo 
	- reconfiguración del anillo
![[Pasted image 20250124124550.png]]

Problemas
- se sobrecarga la red incluso cuando ningun proceso quiere entrar en la SC
- si un proceso cae
	- necesita reconfiguración
	- si tenia un testigo 
		- puede o no regenerar el testigo
- si se produce desconexión o ruptura de la red

Seguridad -> el servidor tiene un token unico
Pervivencia -> todas las peticiones se registra en la cola 
ordenacion -> cada proceso recibe el token en el orden establecido por el anillo

acceso a SC -> 0 a N msg
aceso SC -> 1 a N -1 mensajes

## Algoritmo Ricart

basado en relojes logicos y multidifusion 
- cada proceso conoce la dirección de los demás procesos
- Basado en [[Relojes de Lamport]] 
	- cada proceso posee un reloj lógico
	- Algoritmo descentralizado: evita cuellos de botella
	- se asegura de ser seguro, pervivencia y ordenacion

- Cuanfo un proceso quiere entrar en la seccion critica 
	- le pregunta a los demas si puede entrar
	- todos los demas le contestan que si 
		- en el acceso a SC se obtiene a traves de un token 
- cada proceso guarda el estado en relación a la SC
	- liberada
	- buscada
	- tomada
- cola de solicitudes en cada proceso


Problemas 
- Algoritmo costoso 
- el fallo de cualquier proceso bloquea el sistema 