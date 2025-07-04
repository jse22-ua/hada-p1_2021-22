## TLS

protocolo criptografico para asegurar la comunicacion 

conexion segura y servicio

USO

handshake (salud inicial )
- negociación de algoth
- intercambio y validacion de certificados 
- creacion de claves simetricas seguras con cifrado asimetrico

Transmision segura 
- cifrado simetrico para proteccion de los datos a tiempo real
- comprobacion de constantes de integridad usando hashing (HMAC)


HTTPS
HTTP que usa TLS
- protege info personal contraseñas datos financieros
- privacidad confidencialidad
ayuda a cumplir la normativa GDPR
certificados digitales
- clave publica firmada digitaly por AC
- permite autentificar la identidad del servidor

VALIDACION 

- Domain Validation DV
	- validacion basica del control del dominio
	- rapido 
	- automatico
	- sitios pequeños 
	- muestra candado en la barra de navegacion
- ORGANIZATION VALIDATION OV
	- requiere verificacion de existencia legal y fisica
	- verificar la propiedad de dominio y datos corportivos
	- proporciona info de la empresa en el certificado
- EXTENDED VALIDATION EV
	- validacion rigurosa
	- incluye revision exhaustiva
	- navegador muestra nombre legal 
	- aumenti de cnfianza 
		- sitios bancarios y gurnamentales

