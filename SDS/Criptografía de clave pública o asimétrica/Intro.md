
## Fundamentos de cripto asimétrica

### Conceptos erróneos 

no es más segura que la simétrica
Depende de la longitud y el coste computacional 

No es de proposito general y no hace obsoleta a la simetrica
- es muy lenta 
- solo se usa para distribuir claves y firmar 
- no cifra datos como tal 

Es necesario un protocolo para la ditribucion de claves

unidireccional 
facil de calcular en una direccion  - publica - cifrado
muy costoso de calcular en la otra direccion - privada - descifrado - dificil de determinar 

la publica y la privada pueden ser usadas para cifrar pero solo la privada para descifrar 

cada usuario genera un par de claves 
ponen su clave en un fichero publico 
la otra en secreta
cifran con esa 
se lo envia 
y con la privada del otro se descifra
solo un usuario tiene acceso a la clave privada de una clave publica mientras que la publica la puede ver todo cristo

si cambia las claves o se filtra la privada puede generar otras dos y publicar la nueva publica y usar la nueva privada


Privacidad 
se cifra con la publica y se descifra con la privada

Auth 
se cifra con la privada y se descifra con la publica

## simetría 

Vulnerable en fuerza bruta 
- si no se usa claves largas
- no tiene mucho coste si el tamaño de las clave es pequeño

No se puede sacar la privada a partir de la publica

ataque de mensaje probable
- envias un mensaje corto - Con DES 56bits
- el atacante solo tiene que hacer fuerza bruta de 56 bits


## RSA 

exponenciación modular 
problema de factorizacion con gran numero de cifras en factores primos
es dificil obtener la factorizacion de numeros primos de una potencia

el mas sencillo 
sirve para cifrar y para autentificar sus claves
nadie pudo romperlo 
el atacante se enfenta un coste computacional de la ostia

pq = n 

se escoge un numero natural e primo con n 
exite un numero d inverso de e
la clave publica es m^e mod n

y la privada es  c^d mod n

p y q permanecen en secreto

idealmente la máquina guarda la clave privada
conviene cifrarla con algo simetrico

longitud de clave variable 
- 512 facil de romper
- 2048 recomendable

fuerza bruta se puede 
factorizar n en números primos 

usa para 
intercambio de claves
firma 
cifrado y descifrado 


## Diffie - Hellman 

objetivo - permitir intercambio de claves seguramente

es dificil calcular el logaritmo discreto 
se conoce i como el logaritmo discreto de b con base de a, modulo p 
b = a^i mod p


## MITM

D prepara un ataque generando dos claves 
privada y publica 
A transmite a Ya a B
D intercepta Ya y su clave alternativa Yda a B
B recibe Yda y calcula kb
b transmite yb a A
D interceta Yb y transmite Yda a A
A recibe Yda y Ka

a y b creen compartir la clave 
pero d es quien la comparte y lee sus mensajes

para ello, es necesario autenticar las dos partes con cosas como 
- firma digital 
- autoridades certificadoras 
- información precompartida


## Firma digital 

verifica el autor 
la fecha y hora de firma
autentica contenido
verifica por terceras partes para resolver disputas
firma directa - involucra solo fuente y destino 
confidencialidad conseguido cifrando el mensaje con su firma con simetrica
validez depende de la clave privada 
si el atacante roba la clave privada puede generar mensajes firmados 
	por ello - autoridades certificadoras

### DSS 

estandar de firma digital y DSA su algoritmo 
variante de DH 
permite operacion de firma en lugar del intercambio 
DSS eliminó DSA y permite
- rsa
- ecdsa
	- curvas elipticas
		- se basa en aritm especial que permite la reduccion del tamaño de clave necesario para
			- mejor rendimiento 
		- la nsa dice que es inseguro 
- eddsa


## cuestiones 

• ¿Por qué no usamos criptografía de clave pública para propósito general y qué alternativas tenemos a nuestra disposición?

- Porque es muy lento y solo se usa para distribuir claves y firmar 
- las seguridad depende de la clave y el coste 
- las alternativas son 
	- cifrado simetrico 
		- mas rapido una vez compartida la clave con asimetrico

• ¿Qué papel tienen las funciones hash en los protocolos de firma digital?
- se aplica una funcion hash al mensaje para crear un resumen de mensaje de tamaño fijo 
- se cifra para crear la firma digital  con la clave privada
- el destino descifra con la clave publica y calcula el hash y mira si coinciden

• ¿Qué diferencia hay entre un certificado y un par de claves pública/privada?
- consiste en dos claves matematicamente vinculadas para cifrar y descifrar y la privada se mantiene en secreto 
- un certificado es un documento digital que vincula la clave publica a una identidad 
	- esto lo emite una CA para asegurar que pertenece a esa identidad