## Estructura interna 
![[Pasted image 20230629200356.png]]

- CPU 
	- Unidad de control de funcionamiento del puente
		- [[Modo de reenvío]]
		- [[Modo de aprendizaje]]
- Buffers E/S
	- Unidad de almacenamiento de tramas en proceso (FIFO)
- Base de datos
	- Tabla de asociación de direcciones MAC con N.º de puerto 
		- Tabla de reenvío

## Ejemplo de tablas en puentes 

La inicialización de la tabla requiere de un proceso de aprendizaje automático
Un puente trabaja en dos modos simultáneamente 
- [[Modo de reenvío]]
- [[Modo de aprendizaje]]

Un puente lee todos los paquetes recibidos por un puerto (modo promiscuo) y lo almacena en el buffer para procesarlo