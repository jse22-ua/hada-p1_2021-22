Las #redes de computadores son un conjunto de ordenadores autónomos capaces de transmitir información entre ellos

Los Tipos de redes se pueden dividir por:
 - Tipos de redes por interconexión
	 - [[Redes de difusión]]
	 - [[Redes punto a punto]]
 - Redes por Clasificación geográfica
	 - [[Redes LAN]]
	 - [[Redes MAN]]
	 - [[Redes WAN]]
 - Por accesibilidad
	 - #redes_públicas de datos que son aquellas cuyo moderador o gestor es un organismo o entidad publica. Su utilización está abierta. Ejemplo: Red telefónica conmutada ( #RTC), Red digital de servicios integrados ( #RDSI)
	 - #redes_privadas de datos que son aquellas cuyo moderador o gestor es una entidad corporativa y la emplea para uso propio.  Ejemplo: #SNA de IBM o #DNA de digital 
	 
## Arquitectura de Red

Conjunto de #protocolos definidos e implementados que se **especifican** como se realiza **el intercambio de información** en una red.


La arquitectura se define por una serie de #capas o niveles que reaccionan entre sí.  Esto facilita el diseño de la red y la gestión de fallos.
De aquí surge el [[Modelo de capas]]

## Modelado de protocolos

- Un #protocolo es un conjunto de reglas de utilización de las funciones suministradas por el nivel inferior (envío/recepción de bloques de datos) para llevar a cabo la comunicación a nivel horizontal.

### Máquinas de estados finito (MEF)

- Estados: Descripción de la situaciones de funcionamiento del protocolo. 
- Entradas: Eventos que provocan el cambio de estado de protocolo. 
	- ```Necesario```
- Salidas: Acciones como consecuencia del cambio de estado.
- Transición: Proceso por el cual un protocolo cambia de estado de funcionamiento a otro. 

![[Pasted image 20230621175850.png]]

