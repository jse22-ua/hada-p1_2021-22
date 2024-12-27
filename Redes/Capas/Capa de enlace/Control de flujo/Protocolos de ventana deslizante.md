Mejora el aprovechamiento del canal de comunicación 
- Envía datos aunque no haya recibido ACK 
- bidireccionales pudendo incorporar datos e información de confirmación en un paquete

## Definiciones 
- Lista del emisor 
	- Conjunto de secuencias de numeración de los paquetes de datos
	- Ejemplo 
		- numeración de 3 bits -> 8 secuencias (0-1-2-3-4-5-6-7)
			- (2^3 = 8)
- Lista del receptor 
	- Conjunto de secuencias de numeración de los asentimientos de paquetes de datos
		- numeración de 3 bits -> 8 secuencias (0-1-2-3-4-5-6-7)
			- (2^3 = 8)
- Ventana del emisor 
	- Conjunto de secuencias de numeración de los paquetes que el emisor ha transmitido y no ha recibido ACK
- Ventana del receptor 
	- Conjunto de secuencias de numeración de los paquetes que espera recibir y enviar ACK
- Tamaño de ventana del emisor (We)
	- Varía
- Tamaño de ventana del receptor (Wr)
	- Numero de secuencias que puede tener dicha ventana
	- Se mantiene constante

## Funcionamiento del protocolo 

- Cada vez que el emisor envía un paquete se añade su secuencia a la ventana del emisor.
	- Es hasta llegar a su tamaño máximo de ventana del emisor
- Cuando recibe un ACK de la secuencia transmitida se elimina la secuencia de la ventana

- El receptor espera paquetes cuya secuencia se encuentran en la ventana del receptor.
	- Cuando se recibe un paquete con la secuencia dentro de la ventana del recepto 
	- se envía un ACK de secuencia al emisor 
	- Y se introduce una nueva secuencia en la ventana del receptor

- Ejemplo 
- ![[Pasted image 20230629130432.png]]

## Protocolo de la ventana deslizante con numeración de 1 bit. We = 1, Wr = 1

![[Pasted image 20230629130819.png]]

## Protocolo de ventana deslizante con repetición no selectiva. Wr = 1 siempre

- Menor aprovechamiento del espacio 
	- Al ser el tamaño de ventana del receptor 1
		- Si se comete un error 
			- El emisor debe volver a enviar el paquete cuando expira el temporizador para el ACK
			- Entonces no aceptará los paquetes enviados después
				- Por lo que se deberán reenviar todos
- Cuanto mayor es la ventana del emisor mayor es el desaprovechamiento
- Ejemplo: We=7 y Wr=1. El medio físico es full-duplex [[Transmisión de datos digitales#^c6f9b0]]
	- ![[Pasted image 20230629131722.png]]


## Protocolo de ventana deslizante con repetición selectiva Wr > 1 siempre

Mejora el aprovechamiento del [[Ancho de banda]] aumentando el tamaño de ventana del receptor. 
- Cuando se produce un error
	- El receptor almacena las siguientes dentro de su ventana y espera la secuencia inicial de la misma.
	- Todas las tramas que lleguen a continuación y no estén en la ventana serán rechazadas. 
	- El emisor se da cuenta del error cuando expira el tiempo del ACK y procede a reenviar la trama perdida con los paquetes de su ventana
- Ejemplo 
	- ![[Pasted image 20230629152436.png]]
	- Produce descartes el receptor porque ha rotado su ventana
	- El emisor a llegado a su tamaño máximo así que reenvía los paquetes de cuyo ACK no ha recibido.
		- Produce que reciba paquetes fuera de su ventana y los descarte.

Si la ventana es lo suficientemente grande no hay descartes.

No obstante otra solución podría ser introducir un tiempo de espera de ACK inferior al tiempo de llenado de la ventana.
![[Pasted image 20230629152926.png]]


## Elección del tamaño de la ventana del emisor y del receptor 
- Ventana del emisor 
	- Debe permitir como Mínimo transmitir paquetes hasta llegar el primer ACK de datos
- Ventana del receptor 
	- No debe permitir repeticiones de secuencia en una rotación completa