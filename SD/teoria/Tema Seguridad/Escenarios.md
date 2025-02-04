
A = Alice
B = Bob
S = Sara
## Cifrado de clave compartida 


1. A y B comparten una clave secreta Kab 
2. A usa Kab y acuerda una función de encriptación Encrypt(Kab, M) para codificar y enviar una serie de mensajes
3. B lee los mensajes encriptados usando la función Decrypt(Kab, M)

Será seguro siempre que no se comparta Kab

## Autentificación y cifrado mediante servidor (clave compartida)

B es un servidor de ficheros al que A quiere acceder.
S es un servidor de autentificación

S conoce y comparte Ka con A y Kb con B.

1. A envía un mensaje no encriptado a S identificándose y solicita un token para acceder a B
2. S responde a A con {{token}, Kb, Kab}Ka que contiene una nueva clave Kab. 
3. A usa Ka para desencriptar la respuesta
4. A envía a B el token recibido, su identidad y una respuesta R para acceder al fichero.
5. El token está formado por {Kab, A}Kb. B usa Kb para desencriptarlo, chequea la identidad y usa Kab para encriptar el resto de comunicación con A.

### Problemas 
- Distribución de claves (punto único de fallo)
- Edad de la comunicación
- No controla la repetición y inyección de mensajes
- No es válido para comercio electrónico

### Evolución
- Protocolo Needham - Schroeder
- Kerberos

No escala bien 
Útil en sistemas pequeños con alta seguridad donde el IT conoce a los participantes y comparte las claves de forma segura e individualizada.

## Autentificación y cifrado mediante clave pública

^d68f86

1. B Solicita un par de claves pública/privada (Kbpub, Kbpriv) incluido en su certificado (emitido por una autoridad de confianza) y publica su Kbpub.
2. A obtiene la clave pública de B, Kbpub a partir de un certificado emitido por una autoridad de confianza.
3. A crea una clave compartida Kab para esa sesión, la encripta según Kbpub y la envía a B
4. El resto de la sesión se cifra con esa clave Kab compartida entre ambos.

Pero alguien puede interceptar la solicitud de certificado de clave pública y le envíe el certificado del atacante (Phishing) pudiendo desencriptarlo todo.

La firma digital (del certificado) lo impide.


## Hash y firma digital

A quiere publicar un documento M de forma que cualquier quiera verificar su integridad y autoría:
1. A calcula el HASH del documento H(M)
2. A encripta H(M) con su clave privada y lo concatena a M haciendo público el resultado M + {H(M)} kApriv
3. B obtiene el documento firmado, extrae M y computa H(M)
4. B usa la clave pública de A para desencriptar {H(M)}KApriv y lo compara con el resumen calculado por él. 
	1. Si coincide, es válido
	2. Si no, has sido manipulado o el firmante es un impostor

- Valida el contenido del mensaje no ha sido modificado
- Valida que el firmante es quien dice ser.

#### Certificado digital

Documento digital firmado por una autoridad de certificación (CA) de confianza. Identificación de entidad y para su autentificación

- Posee un formato y estructura estándar con los datos de la entidad
	- personal 
	- página web
	- SSL/TLS
- Incluye siempre una fecha de inicio y de expiración
- Viene firmado por la CA para garantizar la integridad del mismo
- Requiere de un acuerdo sobre la CA

Forma cómoda para la transmisión de la clave pública
Lo encontramos en el DNIe, identificación de empresas, en páginas web, SSL/TLS