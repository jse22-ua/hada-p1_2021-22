## Autentificación de mensajes

se utiliza un resumen criptográfico (hash) para
verificar la integridad del mensaje
asegurar que no fue modificado 
durante la transmisión 

## Firmas digitales 

Firmar el mensaje completo -> ineficiente 
Firmar el resumen (hash) -> mejor rendimiento computacional

## Gestión de contraseñas

Se almacenan credenciales 
de forma segura
Como Hash + sal 
En especial con hashes especiales [[Contraseñas - PBKDF2]]

## Detección de intrusos

Se analiza paquetes de red y registros
comparando eventos con la base de datos

## Antivirus 

se utilizan BD de firmas y detección heurística para identificar y neutralizar
malware 
Troyanos 
y otros

## N.º Aleatorios

Hash forma parte de generadores realmente aleatorios y pseudo