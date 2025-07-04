
## [[PRNG y cifradores en flujo]]

Se basa en XOR entre texto claro y secuencia cifrante 
Se descifra aplicando un XOR otra vez con la secuencia cifrante 
El XOR se anula
Se usa un PRNG para obtener la secuencia cifrante
La semilla actúa como clave
Solo es necesario compartir la clave (semilla)

## [[Cifradores en flujo]]

Síncronos la mayoría 
emisor y receptor sincronizados
Alteración en un bit no afecta a los demás
Bit borrado genera error en la sincronía 

Autosincronizandote modificación de síncrono 
función de la clave y texto cifrado 
un bit erróneo provoca una propagación de errores
emisor receptor->Sincronización automática 
## [[RC4]]
Permutación aleatoria 
Periodo grande -> Clave hasta 256 bytes de longitud
No uso para SSL/TLS riesgo de ataque
WEP/WPA
Muy rápido

## [[Salsa y ChaCha]]


512 bits -> claves de 256 
nonce -> 64
posición -> 64
XOR 
Rotaciones 
Suma 32bits
Sin ataques - excepto salsa20/8 
Útil para cifrado disco o acceso aleatorio
- Se puede obtener cualquier parte de la secuencia
	- Sin anteriores bits
Mejora -> chacha20 -> 12 Bytes nonce -> sigue en uso
		-> Xchacha20 -> 24 Bytes nonce -> mejor 



## [[Otros cifradores en flujo interesantes]]

## Cuestiones

### ¿Qué diferencias hay entre cifradores en flujo y PRNG criptográficos?

Cifrador en flujo coge un texto, una clave y genera un texto cifrado. Emplea PRNG para producir secuencia de bits que combina con XOR con el texto 

El PRNG es un número pseudoaleatorio que se utiliza en los cifradores de flujo y deben ser imposibles de predecir incluso si conoces parte, siempre que la semilla sea secreta
### ¿En qué situaciones sería útil un cifrador en flujo?

Como es tan rápido
- Cifrado de datos en tiempo real 
	- **video, voz, dato**s que llegan con **un flujo continuo** **sin** esperar a que llegue **el bloque completo**
- Entornos de recursos limitados 
	- Los cifradores en flujo suelen ser más **simple** y gasta **menos recursos** que los cifradores de bloques 
- Aplicaciones de tamaño de mensaje desconocido o variable 
	- Elimina sobrecarga
- Cifrado de disco o acceso aleatorio
	- Con salsa20/chacha
		- Ya que permite obtener partes de secuencias sin necesitar los previos
- Canales con ruido o propenso a errores
	- Como los bits alterados no afectan a los demás, un error no corrompe el mensaje cifrado

### ¿Cuál sería un cifrado en flujo adecuado?

- RC4 no porque puede sufrir ataques en SSL/TLS y WEP aunque no sea por el RC4 en si 
	- Aunque es muy rápido y sencillo
- Chacha20 o salsa20 Si
	- Tiene buen rendimiento 
	- Chacha20 sobre todo por su difusión de ronda y rendimiento
		- Xchacha20 mejor aun por sus 24Bytes para aplicaciones que necesiten nonce grandes y más robusto 
	- Salsa 20 y Salsa20/12 también buena opción por su carencia de ataques prácticos