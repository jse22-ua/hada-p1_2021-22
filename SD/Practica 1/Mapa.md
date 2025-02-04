## Introducción 
Simulación de taxis autónomos en una ciudad ficticia. 

Disponemos de vehículos que reciben instrucciones para ir de una central A a un B

## Mapa 

- [[Vehículos (Taxis)]]: representados como id y el color 
	- Color: 
		- Verde si está en movimiento 
		- Rojo si está parado
- Localización: Destino para los que solicitan el servicio
	- Representado como Mayúscula y fondo azul
- [[Customers (Cliente)]] Representado por minúscula y fondo amarillo

![[Pasted image 20240919103607.png]]

![[Pasted image 20240919103547.png]]

El **motor central** y **los [[Vehículos (Taxis)]]** deberán **estar viendo el mapa en todo momento**

Será como un cilindro. Los bordes de arriba darán a los bordes de abajo y los bordes de la derecha darán a los de la izquierda, y viceversa.



[[Mecánica de juego]]
[[Estructura]]
