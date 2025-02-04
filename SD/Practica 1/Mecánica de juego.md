1. [[EC_ Central]] lee un fichero con la configuración del mapa. 
```xml
<ID_LOCALIZACION><COORDENADA_X ><COORDENADA_Y >
<ID_LOCALIZACION><COORDENADA_X ><COORDENADA_Y >
```

2. [[EC_ Central]] dispone de una base de datos con los taxis disponibles

3. [[Customers (Cliente)]] solicitarán el primer servicio. Solo indicará el destino al que quiere ir.  Para automatizar las pruebas del sistema, los servicios estarán contenidos en un fichero.

```xml
<ID_LOCALIZACION>
<ID_LOCALIZACION>
<ID_LOCALIZACION>
```

4. [[EC_ Central]] verá si hay taxi libre y enviará un ok al [[Customers (Cliente)]] y otro al [[Vehículos (Taxis)]] para que vaya a recoger al [[Customers (Cliente)]] y lo lleve al sitio deseado. 
	1. En caso de no poder asignar el servicio enviará una denegación al cliente (KO)
	2. KO y OK tienen que mostrarse claramente en el [[Customers (Cliente)]] como en [[EC_ Central]]

5. [[Vehículos (Taxis)]], según recibe instrucciones, se irá moviendo a su dirección destino. Notificando cada posición.

6. Durante el trayecto el [[Digital engine]] del taxi irá recibiendo información de los [[Sensores]] que indican un estado correcto como una contingencia
	1. Obstáculo enfrente 
	2. Semáforo en rojo 
	3. Peatón cruzando 
	4. ...
	que hará parar al [[Vehículos (Taxis)]] y alertará a [[EC_ Central]].
	Los [[Sensores]] enviarán constantemente un mensaje a cada segundo al [[Digital engine]]. 
	1. Si la contingencia se resuelve 
		1. Enviar un nuevo ok y taxi reanudar su viaje

7. [[EC_ Central]] recibirá todos los movimientos de [[Vehículos (Taxis)]] y volverá a emitir el estado de situación de todo el mapa.

8. Cuando el [[Vehículos (Taxis)]] llegue a su destino deberá permanecer en el estado "END" que será en color rojo.
	1. Solo recibirá ordenes para 
		1. Volver a la base
		2. Ir a otro destino 
		
9.  Cuando llegué, 
	1. notificará al cliente que si el cliente precisa de otro servicio 
		1. Es decir, si tiene mas registros en su fichero 
	- Esperará 4 segundos 
	 - Solicitar nuevo servicio
	 
10. [[EC_ Central]] siempre en espera de nuevos servicios.
	1. Funciones adicionales que pedirle al [[Vehículos (Taxis)]]
		1. Parar
		2. Reanudar
		3. Ir a Destino
		4. Volver a Base

