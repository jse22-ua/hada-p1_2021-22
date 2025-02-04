Combina ambos cifrados para crear un sistema seguro aprovechando la ventaja de ambos.

Resuelve el problema de tener que transmitir las claves del cifrado simétrico

El emisor genera y cifra la clave compartida de sesión con la clave pública del receptor antes de ser transmitida.

El recepto obtiene la clave compartida descifrándola con su clave privada.

EL resto de la sesión entre emisor y receptor se cifra con la clava compartida de ambos

## Protocolos que se utilizan

SSL 3.0 y sus actualizaciones hasta TLS 1.3

Utiliza RSA y ECC como cifrado asimétrico para intercambio de claves.

Utiliza AES-GCM para el resto de comunicado con cifrado simétrico

#### SSL/TLS

Partimos de que el servidor tiene una clave pública y privada.

1. Se comprueba compatibilidad de las librerías de seguridad  de cliente y servidor.
2. El servidor envía su clave pública
3. El servidor pide Clave pública de cliente (opcional)
4. El cliente comprueba validez con el certificado del servidor
5. Cliente envía su clave pública (opcional)
6. El servidor comprueba "certificado/clave pública" del cliente (opcional)
7. Cliente genera clave simétrica MS con la clave pública del servidor y se la envía al servidor
8. Cliente y servidor envían mensajes con esa clave simétrica compartida y se mantendrá solo esta sesión 

##### Generar certificados
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout certServ.pem -out certServ.pem

- -nodes: significa que no va usar DES para cifrar la clave privada
- -days 365: Nº. de días de vigencia del certificado
- -rsa:2048 : Longitud de la clave generada y algoritmo de clave pública 
