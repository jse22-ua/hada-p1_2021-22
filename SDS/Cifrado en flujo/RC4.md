1984

Clave de tamaño variable 
Operaciones sobre bytes

Permutación aleatoria 
Periodo (secuencia aleatoria) casi 10^100
Muy rápido (tanto es SW como en Hardware)

Utilizado para 
SSL/TLS
- Prohibido usar RC4 por riesgo de ataques
- supone un problema con TLS que hace mucha conexiones en poco tiempo 
	- Con 2^24 se podría hace run ataque
	- Las conexiones pueden permitir una recuperación de información sensible

WEP/WPA
- WEP 
	- Se encontraron vulnerabilidades en la generación de claves
		- No afecta RC4
		- es un problema de protocolo
…

Se mantuvo en secreto por RSA hasta que en 1994 se publico de manera anónima en Cypherpunks (lista de correo)

Sencillo, Fácil de recordar

Se basa en s-box de 8x8 (caja de sustitución o array de 256 bytes)
- Cada bit de entrada se "sustituye" por uno de salida
- sustitución Permuta, no fija basandose en clave secretas
- Introduce aleatoriedad a RC4 
	- dependiente de la clave en la generacion de secuencia cifrante

depende de la clave (hasta 256 bytes de longitud)

Existen variantes que buscan más seguridad
Pero ninguna ha alcanzado la popularidad de RC4

RC4A, VMPC, RC4+, Spritz , … 
