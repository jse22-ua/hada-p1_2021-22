
## Vulnerabilidades y amenazas

### Los sistemas distribuidos son vulnerables a 

- Servicios expuestos a Internet
	- Visibles con herramientas como SHODA
	- Posibilidad de acceso remoto
		- ssh permitido
		- puerto 22 abierto
	- Errores de programación o en diseño de la seguridad
	- Sistemas desactualizados
- Acceso físico a la infraestructura
	- Concentradores y routers en lugares públicos accesibles sin autorización
	- Salas de espera con regletas ethernet
- Proximidad a la infraestructura
	- wifi y honeypots
	- Bluetooth y BLE
	- RFID
- Desastres naturales
	- Incendios 
	- Inundaciones

### Tipos de ataque

#### Eavesdropping o escuchar a escondidas / #Man-In-The-Middle #MitM 

Consiste en obtener los mensajes que se envían y se reciben en un dispositivo objetivo

#### Ingeniería social 

Consiste en engañar a la victima, suplantando identidad de otra entidad o persona. 

##### Phishing 
Tipo de ataque de ingeniería social
Consiste en engañar a la victima a partir de mensajes de chat o correo electrónico.
- Correos falsos de supuestas entidades
- Mensajes urgentes o amenazas
- Enlaces falsificados
- archivos adjuntados maliciosos

#### Inyección de código 
Aprovecha vulnerabilidades en el diseño en la implementación de protocolos o aplicaciones web.

Normalmente usando métodos de acceso legítimo

Por ejemplo, poner una consulta de base de datos en un input.

#### Hijacking 
Secuestro de elementos del entorno de internet: URL, DNS, navegador, sesión

#### Fuerza bruta

Aprovechando una criptografía débil o un método de autentificación vulnerable. Búsqueda exhaustiva de claves por combinatoria. 
Suelen aprovecharse diccionarios y conocimiento de esquemas de creación de contraseñas.

#### Manipulación de mensajes y reenvíos

Alterar el contenido de mensajes en tránsito o almacenar mensajes seguros y enviarlos con retraso (Parecido al #Man-In-The-Middle )

#### Ingeniería inversa
Obtener información confidencial analizando el software (`o firmware`) de un dispositivo o servicios con técnicas de ingeniería inversa. Como Ghidra.

#### Ransomware

Cifrado de los datos de un sistema impidiendo el acceso a los mismo, solicitando una recompensa para liberarlo.

#### DDoS (Denegación de servicio distribuido)

Se inundan los canales de comunicación de los servidores con peticiones aparentemente legítimas que impiden la conexión con los clientes.

Por ejemplo, suplantando la IP de un servidor como la de Amazon, enviamos ping a un montón de ordenadores y estos nos devuelven pong a la IP de Amazon. 

La IP de Amazon peticiones de miles de millones de ordenadores y se cae por sobresaturación.

O con ordenadores Zombi.





