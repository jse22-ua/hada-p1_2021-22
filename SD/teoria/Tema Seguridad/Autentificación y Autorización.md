## AAA 

### Autentificación (Authentication)

La autenticación es el proceso por el que se verifica la identidad del usuario y se garantiza que es quien dice ser
Evita accesos indeseados de usuario ilegítimos 

#### Métodos
- Login y password o certificados digitales -> método común
	- Al menos 15 caracteres
	- contraseñas que no se parezcan a la anterior
	- No reutilizarlas en ningún sitio
- Pin de un solo uso
	- caduca en poco tiempo
	- doble factor 2FA
- Biometría 
	- Huella digital 
	- escaneo facial
- Aplicaciones externas
	- Genera código de seguridad a través de una app externa
		- delega login a Google o Facebook
- Multiple Factor Autenticacion MFA
	- + de una de las cosas anteriores

### Autorización (Authorization)

La autorización es el proceso por el que se valida a qué tiene acceso al usuario autenticado 

#### Needham - Schroeder

Desarrolla un protocolo de autentificación distribuido de claves para uso en red local

[[escenarios#^d68f86]]

#### Kerberos

Comunicación segura con servidores en la red local

Crea una clave secreta compartida para cada servidor solicitado y envía la encriptada al computador del usuario

El password del usuario es el secreto inicial para la autentificación de kerberos

En la actualidad se utiliza el cifrado asimétrico para el intercambio de claves.

En vez de llamarlo token lo llaman TGT ticket-granting-ticket y en vez de servidor lo llaman TGS Ticket Granting server que es el concesión de tickets.

[[escenarios#^d68f86]]

#### OAuth2



### Responsabilidad (Accounting)

Completar el proceso de seguridad almacenando información clave sobre "quien", "que", "cuando" y "desde dónde". 

Auditoría -> AAAA