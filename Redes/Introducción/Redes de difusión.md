La red de difusión ( #medio_físico ) es un conjunto de estaciones que comparten **único canal o un cable**. Una de las **máquina envía un mensaje**. Dentro de ese mensaje hay datos, entre ellos se encuentra **la dirección** de la máquina a la que va dirigida. *Todos reciben el mensaje* . 
La maquina con ***esa dirección lo procesa**. ( #direccionamiento_físico) 
El **resto descartan** ese mensaje.

Se puede enviar un mensaje a todas la maquinas de la red #broadcasting y se indica una dirección especial para que todas las maquinas puedan procesarlo #dirección_broadcast ( #dirección_disfusión) 

## Multidifusión

Se puede enviar un mensaje a un #subconjunto de de máquinas dentro de la red. 
Se reserva una bit del campo de dirección en el mensaje para indicar que es de #multidifusión. Los n-1 bits restantes son para direccionar el grupo de máquinas.

## Parte mala
**No** se puede enviar **dos o mas paquetes** al **mismo tiempo** generar #colisiones.


## Estructuras
Las formas de conectar:

- #Bus_de_datos 

                                ![[Pasted image 20230618140140.png]]
- #Anillo o #token_ring #token_ring_IEEE_802_5
	    
	    ![[Pasted image 20230618140321.png]]
   Reduce el número de #colisiones 

## Fragmentación de paquetes

La #fragmentación permite reenvío de pequeños errores y el uso del medio