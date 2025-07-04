
# Resumen de mejores en 

| mejor en                                                                                            | nombre         | tamaño                                          | porque es el mejor                                                                                                                                                                                                                                                                | Deventaja                                                                                     |
| --------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| PRNG                                                                                                | Blum Blum Shur | no tiene tamaño es un generador aleatorio       | porque está basado en problemas matemáticos, no existe algoritmo de tiempo polinomial que pueda predecir el siguiente bit                                                                                                                                                         | es muy lento. Poco práctico para gran volumen de datos                                        |
| Cifrador en flujo                                                                                   | Chacha20       | 256 bits de clave                               | seguro, rápido,Estándar moderno (usado en TLS, SSH, etc.)                                                                                                                                                                                                                         |                                                                                               |
| Cifrador en bloque                                                                                  | AES            | 256 bits de clave                               | rápido, seguro                                                                                                                                                                                                                                                                    |                                                                                               |
| Modo de cifrador en bloque                                                                          | GCM            |                                                 | cifra y autentica, permite paralelismo, rápido, seguro en redes y almacenamiento                                                                                                                                                                                                  |                                                                                               |
| Función Hash                                                                                        | SHA-3          | 224,256,384 o 512 bits                          | No tiene ataques conocidos, más resistente en un futuro                                                                                                                                                                                                                           |                                                                                               |
| Almacenamiento seguro de contraseñas                                                                | Argon2         | configurable pero 256 bits                      | usa memoria intensiva para resistir ataques de GPU/ASIC                                                                                                                                                                                                                           |                                                                                               |
| Algoritmo de clave pública                                                                          | RSA            | 2048 bits recomendable (512 es facil de romper) | se usa en SSL/TLS, fácil de implementar, sirve para intercambio de claves y firma digital, cifrado y descifrado (poco recomendable, muy lento)                                                                                                                                    | Ataques de fuerza bruta y factorizar n n.º primos                                             |
| Protocolo de wifi más seguro                                                                        | WPA3           | 190 bits de clave                               | contraseña más seguras, más difíciles de romper por fuerza bruta (SAE -> para intercambio de claves) (cifrado individualizado -> cifra todos los mensajes entre punto de acceso y dispositivos aunque no esté autentificado)                                                      |                                                                                               |
| protocolo de acceso web seguro y entornos móviles de alta latencia                                  | Http3          |                                                 | mejor rendimiento (baja latencia) porque usa Quic que usa UDP con TLS 1.3 así que se adapta a perdidas de paquetes y cambios en la red. Soporta muy bien ataques de denegación de servicio (DDoS) y de intercepción (MitM) muy difícil de manipular los paquetes (por el cifrado) |                                                                                               |
| protocolo de acceso remoto a servidores                                                             | SSH            | recomendado SSH-2 (SSH-1 inseguro)              | autenticación basada en clave pública más segura y recomendada. Criptografía sólida (simétrico con AES o Chacha20; asimétricos con RSA, ECC para intercambio de claves; Hashing con SHA-256 o SHA-512 para verificar la integridad)                                               | Si se usan contraseñas en vez de clave pública Susceptible a fuerza bruta                     |
| Protocolo creación de enlaces en redes privadas                                                     | IPSec o VPN    |                                                 | VPN usa entre otras cosas IPSec para establecer un túnel seguro entre dos dispositivos en una red publica                                                                                                                                                                         | aunque WireGuard es más fácil de configurar y más eficiente que IPSEC                         |
| Protocolo para aplicaciones en tiempo real                                                          | DTLS           |                                                 | Variante de TLS que usa UDP entonces no hay problemas con perdida de paquetes o desorden. Sin necesidad de conexión orientada                                                                                                                                                     |                                                                                               |
| Extensión de Protocolos de cifrado de correos electrónicos                                          | STARTTLS       |                                                 | Más seguro que sin cifrado, comunicación en abierto y el cliente solicita iniciar STARTTLS y se establece capa TLS sobre la conexión activa                                                                                                                                       | Ataques de degradación si no se configura bien (recomendable indicar el puerto si es posible) |
| Protocolo de acceso controlado en la nube o APIs seguras de microservicios o sitios poco confiables | mTLS           |                                                 | porque ambos cliente y servidor tienen que autenticarse mostrando sus certificados (variante de TLS)                                                                                                                                                                              |                                                                                               |
|                                                                                                     |                |                                                 |                                                                                                                                                                                                                                                                                   |                                                                                               |




# Tema 3
### 🔐 **Criptosistemas clásicos**

1. ¿Qué es la escítala espartana?
	1. es un sistema de cifrado que usaba dos varas, un papel se enrollaba en la vara y se escribia el mensaje de arriba a abajo de izquierda a derecha usado en Esparta
    
2. ¿Qué tipo de cifrado utilizaba la escítala?
	1. cifrado por transposición
    
3. ¿Qué hacía Julio César para cifrar mensajes?
	1. sustituía cada letra por otra desplazada tres posiciones 
    
4. ¿Qué tipo de cifrado es el del César?
	1. cifrado por sustitución Monoalfabético 
	
5. ¿Qué debilidad tiene el cifrado del César?
	1. que tenía siempre daba el mismo carácter después de cifrar el mismo carácter
    
6. ¿Qué variante del cifrado del César usaba Augusto?
	1. desplazaba solo una letra A por B, B por C 
    
7. ¿Qué es un cifrador Monoalfabético?
	1. que siempre existía el mismo alfabeto 
	2. por ejemplo
		1. independientemente del mensaje si el alfabeto dice que la A siempre era la D , La B -> E
    
8. ¿Qué es un cifrador Polialfabético?
	1. diferentes alfabetos a lo largo del mensaje
    

---

### 🔄 **Cifrado de Alberti**

11. ¿Qué inventó Alberti?
	1. un disco para cifrado Polialfabético
    
12. ¿Qué característica hace único su disco?
	1. Que no tenía una correspondencia fija entre caracteres. Se podía ajustar a la clave secreta un alfabeto distinto 
	2. Por ejemplo, en un mensaje la A podría ser la L y en otro la A podría ser la B
    
13. ¿Qué tipo de clave usaba su cifrado?
	1. clave secreta para ajustar la posición del disco
    
14. ¿Por qué su cifrado es polialfabético?
	1. porque podía cambiar la asignación de los caracteres
    

---

### ⚙️ **Cifrado en los siglos XIX y XX**

16. ¿Qué técnica se combinaba con la sustitución en el siglo XIX?
	1. Transposición alteración del orden 
    
17. ¿Qué máquinas se usaban en el siglo XIX para cifrar?
	1. wheatstone y brazeries
    
18. ¿Qué impulsó la criptología en el siglo XX?
	1. la segunda guerra mundial
    
19. ¿Qué máquinas de rotores destacan en la Segunda Guerra Mundial?
	1. enigma 
	2. Hagelin
    
20. ¿Por qué los cifrados antiguos se volvieron inseguros con los ordenadores?
	1. porque surgieron los ordenadores que tenían muchisimo procesamiento de calculos en menos tiempo 
    
21. ¿Qué significa que un sistema sea “computacionalmente seguro”?
	1. que no se pueden romper en un tiempo razonable con ordenadores 
    
22. ¿Quién publicó en 1948 sobre Teoría de la Información?
	1. Shannon
    
23. ¿Qué es el cifrado DES?
	1. un cifrado en bloque publicado en el 74
    
24. ¿Qué descubrieron Diffie y Hellman en 1976?
	1. el cifrado con clave pública mediante funciones unidireccionales 
    

---

### 🔍 **Elementos de seguridad informática**

25. ¿Qué es la confidencialidad?
	1. que solo las entidades autorizadas puedan ver esa info
    
26. ¿Qué se busca con la integridad?
	1. que solo las entidades autorizadas puedan crear y modificar ese mensaje
    
27. ¿Qué garantiza la disponibilidad?
	1. que el servicio esté accesible por las entidades autorizadas
    
28. ¿Qué evita la autenticidad?
	1. que el mensaje provenga de alguien no autorizado 
	2. Evitar suplantación de identidad
    

---

### 🧠 **Terminología**
    
30. ¿Qué es el texto en claro?
	1. texto sin cifrar
    
31. ¿Qué es el texto cifrado?
	1. texto realizado por criptosistemas a partir de un texto en claro
    
32. ¿Qué es un criptosistema?
	1. algoritmos de cifrado más otras herramientas de cifrado primitivos
    
33. ¿Qué es una clave?
	1. lo que se utiliza para realizar texto cifrado empleando criptosistemas
    
34. ¿Qué es el espacio de claves?
	1. las claves posibles que se pueden emplear para romper un criptosistema
    
35. ¿Qué estudia la criptografía?
	1. como diseñar adecuadamente un criptosistema
    
36. ¿Qué estudia el criptoanálisis?
	1. estudia como romper criptosistemas
    
37. ¿Qué es la criptología?
	1. criptografía + criptoanálisis
    

---

### 🔧 **Primitivas criptográficas**

38. ¿Qué es la criptografía simétrica?
	1. criptosistemas con una sola clave privada para cifrar y descifrar
    
39. ¿Qué es la criptografía asimétrica?
	1. criptosistemas con dos claves una de ellas pública y otra privada
    
40. ¿Qué es una firma digital?
	1. para autentificar la identidad del emisor
    
41. ¿Qué es un PRNG?
	1. generar un número pseudoaleatorio
    
42. ¿Para qué sirve una función hash?
	1. resumen para verificar la integridad del mensaje
    
43. ¿Qué hace una función MAC?
	1. verifica autenticidad e integridad del mensaje
    
44. ¿Qué es PBKDF?
	1. función para derivar claves a partir de contraseñas 
    

---

### ❓ **Cuestiones finales**

45. ¿Son seguros hoy los cifrados clásicos?
	1. no, porque un ordenador puede procesar calculos lo suficientemente rápido para que se pueda obtener el mensaje en practicamente segundos o minutos 
    
46. ¿Qué diferencia a los cifrados clásicos de los modernos?
	1. los modernos son más complejos y computacionalmente más dificiles de obtener el texto original 
    
47. ¿Qué es más probable: ganar el Euromillones o adivinar una clave de 128 bits?
	1. ganar el euromillon 
    
48. ¿Tiene sentido fijar una posición al buscar un código, como en las películas?
	1. para nada, se podría obtener fácilmente 

# Tema 4
### 🧠 **Conceptos básicos y requisitos**

1. ¿Qué características debe tener una secuencia para considerarse aleatoria?
	1. aleatoriedad
	2. impredecibilidad 
	3. distribución uniforme
	4. independencia 
    
2. ¿Por qué es importante la impredecibilidad en los números aleatorios?
	1. porque si el siguiente bit fuera predecible con los bits anteriores no sería aleatorio y se podrían anticipar claves o datos cifrados por el atacante
    
3. ¿Puede demostrarse que una secuencia es aleatoria?
	1. no, puede demostrarse que no es aleatorio 
    
4. ¿Qué papel juega la independencia en la generación de números aleatorios?
	1. porque cada valor debe ser independiente del anterior para evitar patrones
    
5. ¿Por qué la distribución estadística uniforme es crucial?
	1. para que sea aleatorio a lo largo de toda la secuencia y todos los valores tengan la misma probabilidad de ocurrir
    

---

### 🔐 **Aplicaciones criptográficas**

6. ¿Cómo se usan los números aleatorios en la distribución de claves?
	1. genera claves únicas e impredecibles para cada sesión 
    
7. ¿Qué relación hay entre la generación de claves RSA y la aleatoriedad?
	1. Porque los algoritmos como RSA requieren números primos grandes generados aleatoriamente
    
8. ¿Por qué es importante la aleatoriedad en los esquemas de autenticación recíproca?
	1. para garantizar que ambas partes sean quienes dicen ser sin claves comprometidas
    
9. ¿Qué riesgos se corren si la secuencia aleatoria usada en cifrado en flujo no es realmente aleatoria?
	1. que si la secuencia es predecible podría permitir la recuperación del texto original con ataques de análisis
	
10. ¿Qué pasaría si una clave de sesión se genera con un PRNG predecible?
	1. Alguien podría recrear la secuencia cifrante completa y comprometer la comunicación 
    

---

### ⚙️ **Tipos de generadores**

11. ¿En qué se diferencian los generadores realmente aleatorios de los pseudoaleatorios?
	1. los generadores aleatorios dependen de ciertos factores físicos
	2. PRNG (pseudoaleatorios) algoritmos deterministas
    
12. ¿Qué ventajas ofrecen los PRNG frente a los generadores verdaderamente aleatorios?
	1. que son más eficientes, más rápidos, más fáciles de implementar
    
13. ¿Por qué los generadores basados en procesos físicos son lentos y costosos?
	1. porque un post-proceso muy extenso para eliminar sesgos y requieren de HW especial
    
14. ¿Qué significa que un PRNG sea "indistinguible" de una secuencia aleatoria?
	1. que parecen realmente aleatorios
    

---

### 🔁 **Generadores Pseudoaleatorios (PRNG)**

15. ¿Cuál es la función de la semilla en un PRNG?
	1. valor inicial que determina toda la secuencia generada
    
16. ¿Qué es el período de un PRNG y por qué importa?
	1. es la longitud de la secuencia antes de empezar a repetirse 
    
17. ¿Qué significa que un PRNG tenga buena "escalabilidad"?
	1. que la secuencia es aleatoria incluso si se extiende su longitud
    
18. ¿Qué implicaciones tiene conocer la semilla de un PRNG?
	1. si la semilla es conocida, toda la secuencia se puede replicar, misma semilla misma secuencia
    
19. ¿Qué hace que una secuencia generada sea impredecible, aun con parte de los bits conocidos?
	1. Por el diseño de PRNG que no puedes obtener los siguientes bits a partir de una secuencia
    

---

### 🧪 **Tests y validación**

20. ¿En qué consiste el test de frecuencia?
	1. verifica el equilibrio entre ceros y unos (mira patrones)
    
21. ¿Qué mide el test de poker en una secuencia aleatoria?
	1. evalúa la frecuencia de ciertos valores en bloques de bits
    
22. ¿Qué diferencia hay entre TestU01 y PracRand?
	1. PracRand es más rápido y moderno, TestU01 es más completo pero lento
    
23. ¿Qué es el test de Maurer y qué evalúa?
	1. evalúa la compresibilidad de la secuencia
    
24. ¿Por qué es importante aplicar múltiples tests a una secuencia pseudoaleatoria?
	1. para tener mayor certeza de que no es aleatoria
    

---

### 🔢 **PRNG Populares**

25. ¿Cómo funciona el generador congruencial lineal (GCL)?
	1. $$(a·Xn+c)mod·m$$
    
26. ¿Por qué no es seguro usar el GCL en criptografía?
	1. porque se puede romper fácilmente con 4 valores consecutivos 
    
27. ¿Qué hace seguro al generador Blum Blum Shub?
	1. su dificultad para ser predecible, no existe algoritmo polinomial que sea capaz de predecir el siguiente número
    
28. ¿Por qué el generador BBS no es práctico para generar secuencias largas?
	1. porque es un calculo muy lento, aunque seguro
    
29. ¿Qué rol juegan los números primos p y q en el BBS?
	1. son los números con los que se calcula n, la base del algoritmo $$n=p·q$$
    

---

### 🧮 **LFSRs (Linear Feedback Shift Registers)**

30. ¿Cómo se genera la secuencia en un LFSR?
	1. Desplazando bits y aplicando funciones XOR a ciertas posiciones 
    
31. ¿Qué es un NLFSR y cómo se diferencia de un LFSR?
	1. NLFSR usa funciones no lineales en la retroalimentación 
    
32. ¿Qué significa que un LFSR tenga complejidad lineal?
	1. Que se puede modelar con álgebra lineal, facilitando su predicción 
    
33. ¿Cómo se puede predecir la secuencia de un LFSR si se conocen 2n bits?
	1. porque eso permite resolver el sistema que genera la secuencia 
    
34. ¿Qué modificaciones se hacen a los LFSR para mejorar su seguridad?
	1. añadiendo filtrado lineal y combinación con no lineal 
    

---

### 🔐 **PRNG basados en primitivas criptográficas**

35. ¿Cómo se usa un cifrador en bloque para generar números aleatorios?
	1. se usa un cifrador en modos CTR y OFB para producir bits aleatorios
    
36. ¿Qué modo de operación se emplea típicamente con cifradores para este propósito?
	1.  CTR y OFB
    
37. ¿En qué consiste el estándar ANSI X9.17?
	1. un estándar de generación de números aleatorios que usa triple DES
    
38. ¿Cómo se pueden usar funciones hash como PRNG?
	1. encadenando la salida de la función hash para generar nuevos bits
    
39. ¿Por qué la salida de una función hash criptográfica puede considerarse pseudoaleatoria?
	1. porque la salida no tiene partes previsibles
    

---

### 🔁 **PRNG y cifrado en flujo**

40. ¿Qué papel juega el PRNG en los cifradores de flujo?
	1. usa una secuencia aleatoria que se genera pasando la clave a un generador y después se hace XOR con el texto a cifrar
    
41. ¿Qué se necesita compartir entre emisor y receptor al usar cifrado en flujo?
	1. la clave (semilla), no toda la secuencia cifrante porque eso es ineficiente
    
42. ¿Por qué la operación XOR es útil en este tipo de cifrado?
	1. porque descifra igual que cifra, aplicando un XOR
    
43. ¿Qué ocurre si la secuencia cifrante es reutilizada?
	1. pues que dará el mismo texto cifrado y será más fácil de romper y obtener el texto original
    

---

### ❓ **Preguntas abiertas del documento**

44. ¿Cuáles son las diferencias clave entre un PRNG criptográfico y uno no criptográfico?
	1. los criptográficos son resistente a ataques y tienen impredecibilidad
    
45. ¿En qué situaciones se usaría un PRNG no criptográficamente seguro?
	1. en finanzas y estudios estadísticos, juegos 
    
46. ¿Qué propiedades hacen que un PRNG sea considerado "adecuado" para criptografía?
	1. impredecibilidad 
	2. aleatoriedad 
	3. largo periodo 
	4. semilla secreta

    
47. ¿Qué implicaciones tiene la elección del PRNG en el diseño seguro de software?
	1. Un PRNG débil puede comprometer claves, autentificaciones o cifrados, haciendo vulnerables el SW

# Tema 5
### Conceptos básicos

1. ¿Qué operación se utiliza en el cifrado en flujo?
	1. XOR de texto claro y la secuencia cifrante 
    
2. ¿Qué ocurre si se aplica XOR dos veces con la misma clave?
	1. Que se descifra
    
3. ¿Qué papel juega el PRNG en el cifrado en flujo?
	1. genera un número pseudoaleatorio con el que se cifrará el texto 
    
4. ¿Qué es una semilla en un PRNG?
	1. el valor inicial que actúa como clave secreta
    
5. ¿Por qué no es viable compartir toda la secuencia cifrante?
	1. porque sería muy larga, por ello se comparte solo la clave 
    

### Tipos de cifradores

6. ¿Qué diferencia hay entre un cifrador síncrono y uno autosincronizante?
	1. el síncrono genera la secuencia cifrante de manera independiente
	2. la autosincronizante se obtiene a partir del texto y de la clave y se sincroniza de forma automática
	3. Además el síncrono si un bit es alterado no se ve afectado el resto 
    
7. ¿Qué sucede si se pierde un bit en un cifrador síncrono?
	1. se pierde la sincronización
    
8. ¿Qué tipo de error provoca una propagación de errores?
	1. un error en un bit en cifradores autosincronizantes 
    
9. ¿Cuál es una ventaja de los cifradores autosincronizantes?
	1. que se sincronizan automáticamente
    

### Sobre RC4
    
    
12. ¿Qué tamaño puede tener la clave en RC4?
	1. clave de tamaño variable hasta 256 bytes
    
13. ¿Cuál es la estructura interna principal de RC4?
	1. una S-box (array de 256 bytes)
    
14. ¿Por qué fue popular RC4 en software?
	1. por ser muy rápido y fácil de implementar 
    
15. ¿Qué protocolos usaron RC4?
	1. SSL/TLS, WEP,WPA
    
16. ¿Por qué se prohibió RC4 en SSL/TLS?
	1. porque muchas conexiones al mismo tiempo pueden romper la seguridad
    
17. ¿Qué problema tenía WEP con RC4?
	1. fue un problema de protocolo propio de WEP, no de RC4 como tal
    
18. ¿Qué variantes de RC4 existen?
	1. RC4A,VMPC,RC4+,SPritz
    

### Salsa20 y ChaCha20

    
20. ¿Qué operaciones usa Salsa20?
	1. XOR, suma de 32bits y rotaciones
    
21. ¿Qué tamaño tiene la clave de Salsa20?
	1. 256 bits 
    
22. ¿Qué es un nonce?
	1. un número que no se repite (salsa20 tiene uno de 64bits)
    
23. ¿Cuál es la diferencia entre ChaCha20 y XChaCha20?
	1. chacha20 tiene 12bytes de nonce 
	2. XChacha20 tiene nonce de 24 bytes
    
24. ¿Cuántas rondas tiene Salsa20/12?
	1. 12
    
25. ¿Es Salsa20 aún seguro?
	1. si, salvo Salsa20/8 que existen ataques capaces de romperlo. 
	2. Pero Salsa20 y Salsa20/12 no se conocen ataques eficaces
    
26. ¿Por qué Salsa20 no llegó a la fase final de eSTREAM?
	1. por limitaciones de HW restringido
    

### Otros cifradores

27. ¿Qué cifrador se usó en GSM 2G?
	1. A5/1 y A5/2.
28. ¿Qué es Ascon?
	1. un cifrador en flujo ligero estandarizado por NIST en 2023

### Cuestiones

31. ¿Qué diferencias hay entre cifradores en flujo y PRNG criptográficos?
	1. cifrador en flujo usa un PRNG para generar una secuencia cifrante que se combina con un XOR con el texto en claro, el objetivo es cifrar
	2. El PRNG se puede usar para otras cosas, su objetivo no es cifrar, es añadir seguridad 
	
32. ¿En qué situaciones sería útil un cifrador en flujo?
	1. cuando se necesita un cifrado Rápido y en tiempo real, se tiene que cifrar algo que no es de tamaño fijo, si los recursos son limitados, para accesos aleatorios a datos cifrados

33. ¿Cuál sería un cifrado en flujo adecuado?
	1. Chacha20 de 256 bits
		1. es seguro 
		2. rápido 
		3. Estándar para TLS, SSH, etc.
		4. Ideal para SW

# Tema 6
### 🔐 **Conceptos básicos**

1. ¿Qué es un cifrador en bloque?
	1. cifradores que divide el texto en bloques y cifra un bloque cada vez
	2. no depende de la clave 
    
2. ¿Qué es un cifrador en flujo?
	1. cifradores basados en XOR que cifran elemento a elemento a modo de cadena con una PRNG generado a partir de una clave
	2. depende de la clave y del estado del cifrador
    
3. ¿En qué se basa la mayoría de los cifradores en bloque?
	1. la red de Feistel
    
4. ¿Qué esquema sigue un cifrador en flujo?
	1. El esquema de Verman
    
5. ¿Qué tipo de red es la base de los cifradores en bloque?
	1. de Feistel
    

### 🔧 **Algoritmos**

6. ¿Qué significa DES?
	1. ni idea
    
7. ¿Qué algoritmo reemplazó a DES?
	1. AES
    
8. ¿Qué tamaño de clave usa DES?
	1. 64 bits (solo 56 bits utiles)
    
9. ¿Qué es Rijndael?
	1. El nombre original de AES
    
10. ¿Qué algoritmo fue adoptado como AES?
	1. Rijndael
    
11. ¿Qué tamaño de bloque usa AES?
	1. 128, 192, 256
    
12. ¿Cuántas rondas usa AES-256?
	1. 128 - 10 rondas
	2. 192 - 12 rondas
	3. 256 - 14 rondas
    
13. ¿Qué algoritmo usa GF(2^8)?
	1. AES
    
14. ¿Qué algoritmo implementa AES-GCM?
	1. AES-NI
    
15. ¿Qué algoritmo se usa en bcrypt?
	1. Blowfish
    

### 🔁 **Estructura y funcionamiento**

16. ¿Qué operaciones se hacen en una ronda de AES?
	1. sustitución y permutación 
    
17. ¿Qué función realiza SubBytes?
	1. tabla de 256 bytes
    
18. ¿Qué operación hace AddRoundKey?
	1. xor de bytes
    
19. ¿Qué estructura usa el esquema Feistel?
	1. aplica un número de rondas y después combina
    
20. ¿Cuántas rondas tiene el algoritmo DES?
	1. 16 rondas
    

### 🛡️ **Seguridad**

21. ¿Es DES seguro hoy en día?
	1. es vulnerable a ataques de temporización, criptoanalisis diferencial y lineal 
    
22. ¿Qué tamaño de clave tiene DES?
	1. 64 bits (56 utiles)
    
23. ¿Qué tipo de ataques puede sufrir DES?
	1. ataque de temporización (timing attack)
	2. criptoanalisis diferencial 
	3. Criptoanalisis lineal 
    
24. ¿Qué es el criptoanálisis diferencial?
	1.  tarda 2^47 pruebas en 2^47 textos claros elegidos en romperlo
    
25. ¿Qué es el criptoanálisis lineal?
	1. encontrar ecuaciones lineales tardaría 2^43 pruebas
    
26. ¿Qué tipo de ataque aprovecha diferencias de tiempo?
	1. mide la diferencia de tiempo de ejecución en función de la entrada sacando info de clave y estado interno, DES tarda lo mismo pero es vulnerable a estos ataque porque usa S-Box así que los ataques se vuelven basados en caché 
    
27. ¿Qué significa AEAD?
	1. ni idea
    
28. ¿AES-NI mejora el rendimiento?
	1. si
    
29. ¿Qué algoritmo usa doble clave y se aplica al almacenamiento?
	1. AES-XTS
    

### ⚙️ **Modos de operación**

30. ¿Qué significa ECB?
	1.  Libro electrónico de código porque es capaz de tabular relación entre entrada y salida del cifrador.
    
31. ¿Es seguro usar ECB?
	1. No, siempre usa la misma entrada y eso hace que al cifrar varios bloques con el mismo contenido dé el mismo texto cifrado
    
32. ¿Qué es CBC?
	1. Cifrador de encadenamiento de bloque, hace XOR con el texto cifrado anterior, cuando no hay se hace con un vector de inicialización IV, necesitar rellenar hasta el tamaño del bloque con ECB
    
33. ¿Qué necesita CBC además del texto en claro?
	1. Un vector de inicialización IV
    
34. ¿Qué modo convierte el cifrador en bloque a uno en flujo?
	1. CFB (retroalimentación de cifrado)
		1. bajo rendimiento 
		2. introduce la salida en el registro de entrada y lo desplaza a la izquierda
    
35. ¿Qué es OFB?
	1. similar que CFB pero con salida directa del cifrador en lugar de texto cifrado final 
		1. evita que se propaguen errores si hay un error en un bit 
		2. pero es fácil de manipular su contenido
    
36. ¿Qué hace el modo CTR?
	1. tener un contador del tamaño del bloque distinto para cada bloque, se suele inicializar con el IV y se va incrementando mod 2^b 
	2. se puede hacer en paralelo porque no encadena con el anterior texto cifrado
    
37. ¿CTR permite cifrado paralelo?
	1. no porque depende de la secuencia anterior
    
38. ¿Qué ventaja tiene OFB frente a CFB?
	1. evita que se propaguen errores si hay un error en un bit 
	2. pero es fácil de manipular su contenido
    
39. ¿Qué modo combina cifrado y autenticación?
	1. AES-GCM
    

### 🖥️ **Implementación**

40. ¿AES puede usarse en procesadores de 8 bits?
	1. si 
    
41. ¿Qué instrucciones usan los procesadores modernos para AES?
	1. AES-NI
    
42. ¿Qué operaciones se implementan como tablas en AES?
	1. suma, resta, división sobre cuerpos de Galois (GF (2^8))

    
45. ¿Qué alternativa moderna a AES-GCM ofrece Go?
	1. chacha20

46. ¿Qué cifrador en bloque elegirías en la actualidad, atendiendo a la seguridad y el rendimiento?
	1. AES de 128, 192 o 256 bits
47. ¿Con qué modo de operación?
	1. GCM porque permite cifrado y autentificación 
48. ¿Hay situaciones en las que sería preferible un cifrador en bloque a uno en flujo o viceversa?
	1. en bloque cuando se quiere que hacer gran cantidad de datos 
	2. en flujo cuando se quiere cifrar por segmentos
# Tema 7

### 🔐 Funciones Hash - Principios

1. ¿Qué produce una función hash?
	1. una secuencia (resumen) de tamaño fijo 
    
2. ¿Qué tipo de entrada acepta una función hash?
	1. un bloque de entrada de cualquier tamaño 
    
3. ¿Cómo se encadenan los bloques en funciones hash?
	1. de forma iterativa manteniendo el estado entre  bloques
    
4. ¿Qué esquema de relleno se menciona?
	1. Merkle damgard 
    
5. ¿Qué significa que una función hash es de “una vía”?
	1. que es computacionalmente difícil obtener el mensaje orginal a partir del resumen
    

---

### 📌 Aplicaciones de Hash

6. ¿Para qué se usa el hash en autenticación de mensajes?
	1. para verificar la integridad de los datos y asegurar que no han sido modificados durante la transmisión 
    
7. ¿Por qué se firma el resumen y no el mensaje completo?
	1. porque la firma necesita de un coste computacionalmente notable cuanto mayor sea el mensaje a firma, así que, para que sea más efectivo que se firme el hash o resumen que es de un tamaño bastante bajo
    
8. ¿Qué técnica se usa para almacenar contraseñas de forma segura?
	1. hash + sal o PBKDF + sal (preferentemente)
    
9. ¿Cómo ayudan los hashes a detectar intrusos?
	1. analizando los paquetes de red con los registros, indexando y comparando evento de la base de datos
    
10. ¿Qué papel juega el hash en los antivirus?
	1. se utilizan base de datos de firmas y técnicas de detección heurística (de coste) para identificar y neutralizar malwares, troyanos, etc. 
    
11. ¿Qué relación tienen los hashes con los números aleatorios?
	1. participan en los algoritmos de generación de números aleatorios o pseudoaleatorios 
    

---

### ✅ Requisitos de una buena función hash

12. ¿Qué significa compresión en funciones hash?
	1. Que la salida es siempre del mismo tamaño independientemente del tamaño de la entrada
    
13. ¿Qué es una colisión débil?
	1. Dificultad para encontrar un segundo mensaje con el mismo hash $$H(x)=H(y)$$
    
14. ¿Qué es una colisión fuerte?
	1. Dificultad para encontrar dos mensajes distintos con el mismo hash
    
15. ¿Qué implica la Pseudoaleatorieadad en hashes?
	1. que el hash cumple con los test de aleatoriedad
    

---

### 🛡️ Ataques a funciones hash

16. ¿Qué es un ataque de preimagen?
	1. coge un mensaje hasheado e intentar hashear todos los mensajes posibles 
    
17. ¿Qué paradoja se relaciona con la resistencia a colisiones?
	1. la paradoja del cumpleaños
    
18. ¿Qué longitud mínima se recomienda para evitar ataques?
	1. 256 bits (128 bits de seguridad contra colisiones)
    
19. ¿Qué tipo de análisis se aplica a la estructura del hash?
	1. criptoanálisis sobre su estructura, esquema iterativo `Merkle-Damgard`
    

---

### 📚 Funciones Hash conocidas

20. ¿Cuál fue el problema de seguridad con MD4?
	1. Fue roto por Hans Dobbertin
    
21. ¿Qué función hash fue rota por Hans Dobbertin?
	1. MD5 y MD4
    
22. ¿Qué fallos presenta MD5?
	1. vulnerable ante ataque de preimagen y colisiones
    
23. ¿SHA-1 sigue siendo seguro?
	1. no, se rompió en 2011
    
24. ¿Qué ventajas tiene SHA-2 frente a SHA-1?
	1. Mejor seguridad
	2. mayor tamaño de salida 
		1. SHA-1 era de 160 bits
		2. SHA-2 puede ser de 224, 256 ,384 o 512 bits
		3. optimización para 64bits
    
25. ¿Qué diferencia tiene SHA-3 respecto a SHA-2?
	1. Diseño complemente distinto, Funciona con un sistema "esponja" con parámetros variables
    

---

### 🧪 SHA-3 y otras funciones
    
27. ¿Qué diseño utiliza SHA-3?
	1. Funciona con un sistema "esponja" con parámetros variables, no basado en el esquema de Merkle-Damgard como SHA-1, SHA-2 y MD4, MD5
    
28. ¿SHA-3 pretende reemplazar a SHA-2?
	1. no, simplemente coexiste, es un plan B en caso de que SHA-2 sea roto
    
29. ¿Qué es Tangle?
	1. un función de hash española creado por la UA y CSI
    
30. ¿Qué particularidad tiene Tangle respecto a funciones anteriores?
	1. Tiene colisiones en la primera ronda y usa S-Box del AES
    

---

### 🔑 Contraseñas: almacenamiento

31. ¿Qué riesgo hay si las contraseñas se guardan en claro?
	1. que cualquiera que consiga acceder a la base de datos consigue todas las credenciales
    
32. ¿Qué problema tiene cifrar todas las contraseñas con una sola clave?
	1. Todas las contraseñas tienen el mismo cifrado si se repiten 
    
33. ¿Qué ventaja tiene usar sal en el hash?
	1. dificulta el precálculo y rainbow tables 
    
34. ¿Qué hace una función PBKDF?
	1. Deriva una clave a partir de una constraseña usando multiples iteraciones
    

---

### 🛠️ Funciones de derivación

35. ¿Qué es PBKDF2?
	1. Función de derivación estandar que usa hash y sal con iteraciones 
    
36. ¿Qué diferencia hay entre PBKDF1 y PBKDF2?
	1. con PBKDF2 puedes indicar el tamaño de la salida y itera una función pseudoaleatoria
	2. PBKDF1 solo tiene salidas de 160 bits
    
37. ¿Qué aplicaciones utilizan PBKDF2?
	1. Wifi WPA/WPA2, WinZip, IOS, MAC Os Windows, Luks
    
38. ¿Qué es BCRYPT?
	1. una función de autentificación basado en `blowfish` para Unix 
    
39. ¿Qué hace más resistente a BCRYPT?
	1. Es más costoso computacionalmente y resiste mejor ataques por hardware
    
40. ¿Qué es SCRYPT?
	1.  PBKDF que usa mucha memoria y funciones no paralelizables
    
41. ¿Cómo evita SCRYPT los ataques por GPU?
	1. usando gran cantidad de RAM con acceso desordenado    

---

### 🥇 Concurso PHC

42. ¿Qué es el concurso PHC?
	1. un concurso hecho para elegir mejor algoritmo de password hashing
    
43. ¿Qué función ganó el concurso PHC?
	1. Argon2
    
44. ¿Qué versiones tiene Argon2?
	1. Argon2i - independiente 
	2. Argon2id - hibrido
    
45. ¿Por qué se considera seguro Argon2?
	1. no hay ataques conocidos importantes que pudieron romperlo
	2. es resistente a HW especializado

# Tema 8

### Fundamentos

1. ¿Qué es la criptografía asimétrica?
	1. un sistema criptográfico que utiliza una clave para cifrar clave pública y otra para descifrar clave privada
    
2. ¿Qué problema soluciona la criptografía asimétrica?
	1. La distribución de claves y la firma digital 
    
3. ¿La criptografía asimétrica reemplaza a la simétrica?
	1. Para nada, de hecho, se utiliza para cosas distintas 
	2. La simétrica se utiliza para cifrado por la asimétrica tiene un proceso muy lento y la asimétrica para intercambio de claves, firma digital
    
4. ¿De qué depende la seguridad en la criptografía asimétrica?
	1. del tamaño de clave, existe una relación longitud de clave y coste computacional de los ataques
    
5. ¿Quién propuso las funciones unidireccionales?
	1. Diffie Hellman
    
6. ¿Qué son las funciones unidireccionales?
	1. Que son fáciles de calcular en una dirección pero en la otra son muy difíciles prácticamente imposibles
    
7. ¿Qué significa “asimétrica” en este contexto?
	1. que no se usa la misma clave para cifrar que para descifrar 
    
8. ¿Qué dos problemas soluciona la criptografía asimétrica?
	1. Intercambio de claves y firma digital
    

---

### Características y funcionamiento

9. ¿Cuántas claves usa la criptografía asimétrica?
	1. Dos claves, una pública y una privada
    
10. ¿Las claves en criptografía asimétrica son conmutativas?
	1. Algunos algoritmos lo permiten 
	2. en otros solo una clava es para cifrar y la otra es para descifrar si o si 
    
11. ¿Qué clave se publica?
	1. La clave que se sube a un fichero público para que el emisor, pueda enviarle mensajes cifrados al receptor que es el único que puede descifrar con su clave privada, es la clave pública
    
12. ¿Qué clave se mantiene en secreto?
	1. la clave privada
    
13. ¿Quién puede descifrar un mensaje cifrado con una clave pública?
	1. solo quien posee la clave privada correspondiente
    
14. ¿Se puede cambiar la clave privada?
	1. si, si se publica la nueva clave pública y se debe hacer periódicamente
    
15. ¿Se puede reutilizar la clave pública tras cambiar la privada?
	1. no, debe actualizarse junto con la privada
    

---

### Operaciones

16. ¿Qué clave se usa para garantizar privacidad?
	1. la clave pública del destinatario para cifrar mensajes y la privada para descifrar 
    
17. ¿Qué clave se usa para autentificación?
	1. se cifra con la clave privada del emisor y se verifica con su clave pública
    
18. ¿Cuál es la función de la clave privada del emisor?
	1. firmar mensajes o autentificar mensajes
    
19. ¿Qué clave verifica la firma digital?
	1. la pública del emisor
    

---

### Seguridad y vulnerabilidades

20. ¿Son invulnerables los algoritmos de clave pública?
	1. si en ataques de fuerza bruta y en ataques de mensajes probables
    
21. ¿Qué es un ataque de mensaje probable?
	1. obtener un mensajes corto cifrado y probar todos los mensajes posibles cifrandolo con la clave pública hasta dar con el correcto
    
22. ¿Qué es un ataque por fuerza bruta?
	1. probar todas las posibles claves hasta dar con la indicada
    
23. ¿Qué implica derivar la clave privada desde la pública?
	1. romper la seguridad del sistema, aunque no se ha demostrado matemáticamente se podría hacer en un futuro 
    
24. ¿La factorización de primos es fácil?
	1. no, sobretodo si se trata de números grandes, es muy costoso computacionalmente

---

### Algoritmos

25. ¿Qué significa RSA?
	1. las siglas de quienes lo inventaron
    
26. ¿Quiénes inventaron RSA?
	1. Rivest 
	2. Shamir
	3. Adleman
    
27. ¿Qué operación matemática usa RSA?
	1. Exponenciación modular y factorización de número grandes
    
28. ¿En qué se basa la seguridad de RSA?
	1. En que es muy difícil factorizar números primos
    
29. ¿Qué tamaño de clave es inseguro en RSA?
	1. 512 bits o menos
	2. (recomendable al menos 2048)
    
30. ¿RSA sirve para firmar digitalmente?
	1. si
    
31. ¿Qué pasa si se factorizan p y q?
	1. se puede calcular la clave privada y romper la seguridad 
    

---

### Diffie-Hellman

32. ¿Para qué sirve el algoritmo Diffie-Hellman?
	1. para intercambio de claves segura
    
33. ¿En qué se basa su seguridad?
	1. en la dificultad de calcular en logaritmo discreto de b siendo $$b=a^i·mod(p)$$ siendo i $$0<=i<=p-1$$
    
34. ¿Qué es un logaritmo discreto?
	1. el exponente i tal que $$b=a^i·mod(p)$$
    

---

### Ataque MITM

35. ¿Qué significa MITM?
	1. Man in the middle
    
36. ¿Cómo actúa un atacante MITM?
	1. cuando se realiza el intercambio de claves, intercepta las claves entre los comunicantes y envía sus claves para poder leer los mensajes que envien cifrado con su clave
    
37. ¿Qué soluciones hay contra MITM?
	1. firma digital, autoridades certificadoras o información precompartida
    
38. ¿Por qué es vulnerable Diffie-Hellman sin autenticación?
	1. porque no verifica la identidad de las partes
    

---

### Firma digital

39. ¿Qué garantiza una firma digital?
	1. Autoría, integridad y fecha/hora del mensaje 
	2. que procede de quien dice ser
    
40. ¿Qué es una firma directa?
	1. un esquema de firma que involucra a dos comunicantes (fuente, destino) sin terceros
    
41. ¿Puede haber repudio en la firma digital?
	1. si, si el emisor afirma que su clave privada ha sido robada
    
42. ¿Qué ocurre si se roba la clave privada?
	1. que podrían generar mensajes firmados con anterioridad
    
43. ¿Qué función cumplen las autoridades certificadoras?
	1. verifican y autentican la relación entre claves y usuario
    

---

### DSS y curvas elípticas

44. ¿Qué es DSS?
	1. un estándar de firma digital propuesto por NIST
    
45. ¿Qué es DSA?
	1. El algoritmo variante de DH (DH permite intercambio de claves y no firma) que permite la operación de firma
	2. DH = Diffie-Hellman
    
46. ¿Qué algoritmos acepta DSS actualmente?
	1. RSA - con restricciones adicionales
	2. ECDSA - curvas elípticas 
	3. EdDSA - curvas elípticas con variante de Edward
    
47. ¿Qué ventaja tienen las curvas elípticas?
	1. permite reducir el tamaño de la clave para mejorar mucho el rendimiento
	2. Requieren de claves más cortas con la misma seguridad
    
48. ¿Por qué se cuestiona la seguridad de algunas curvas?
	1. porque tiene vulnerabilidades en ciertos estándares según la NSA
    

---

### Reflexión y aplicación

49. ¿Por qué no se usa clave pública para todo?
	1. porque tiene un coste computacional muy alto y sería muy lenta la comunicación cifrando todos los mensajes con clave pública
    
50. ¿Qué papel tienen las funciones hash en firmas?
	1. Es más costoso computacionalmente firmar el mensaje completo, por lo que solo se firma el resumen o hash y verifica la integridad y autenticidad
    
51. ¿Qué diferencia hay entre un certificado y un par de claves?
	1.  el certificado verifica vincula una clave pública con su propietario a través de una entidad confiable

# Tema 9
### **TLS y HTTPS**

1. ¿Qué protocolo dio origen a TLS?
	1. SSL
    
2. ¿Qué versión de TLS es más rápida y segura?
	1. TLS 1.3
    
3. ¿Qué método de cifrado se usa en la transmisión de datos con TLS?
	1. cifrado simétrico
    
4. ¿Qué significa HTTPS?
	1. HTTP pero con TLS para la seguridad
    
5. ¿Qué tipo de certificado ofrece mayor nivel de validación?
	1. EV `extended validation`
    
6. ¿Qué muestra el navegador cuando un sitio usa un certificado DV?
	1. un candado en la barra de navegación 
    

---

### **SPDY, HTTP/2 y HTTP/3**

7. ¿Quién desarrolló SPDY?
	1. Google
    
8. ¿Qué técnica usa HTTP/2 para reducir el número de conexiones simultáneas?
	1. Multiplexación
    
9. ¿Qué protocolo reemplazó a SPDY como estándar?
	1. HTTP/2
    
10. ¿Sobre qué protocolo se construye HTTP/3?
	1. QUIC
    
11. ¿Qué ventaja clave ofrece HTTP/3 en redes móviles?
	1. baja latencia y mejor manejo de cambios de red
    

---

### **SSH**

12. ¿Qué versión de SSH es segura y recomendada actualmente?
	1. ssh - 2
    
13. ¿Qué protocolos inseguros reemplaza SSH?
	1. ftp y TELNET
    
14. ¿Qué método de autenticación es más seguro en SSH?
	1. Autenticación basada en clave pública
    
15. ¿Qué protocolo se usa con SSH para transferir archivos de forma segura?
	1. SCP Y SFTP
    

---

### **`IPSec` y VPN**

16. ¿Qué modo de `IPSec` protege todo el paquete IP?
	1. MODO TUNEL
    
17. Nombra un componente de `IPSec` que garantiza confidencialidad.
	1. ESP (`Encapsulating Security payload`)
    
18. ¿Qué tecnología permite crear un túnel seguro entre dispositivos?
	1. VPN
    
19. ¿Qué protocolo de VPN es moderno y fácil de configurar?
	1. WIREGUARD
    

---

### **Otros protocolos**

20. ¿Qué variante de TLS funciona sobre UDP?
	1. DTLS (`Datagram TLS`)
    
21. ¿Qué protocolo añade cifrado TLS a protocolos como SMTP?
	1. STARTTLS
    
22. ¿Qué hace STARTTLS al inicio de una conexión?
	1. Inicia la conexión en claro y luego negocia TLS
    
23. ¿Qué significa `mTLS`?
	1. MUTUAL TLS
    
24. ¿Qué requisito adicional impone `mTLS` sobre TLS estándar?
	1. tanto el cliente como el servidor presenten certificados


### 🛡️ **TLS y HTTPS**

1. **Explica cómo el protocolo TLS garantiza la seguridad durante la transmisión de datos. Menciona al menos tres mecanismos clave.**
	1. cifrado asimétrico para intercambiar claves de forma segura
	2. cifrado simétrico para proteger datos en tiempo real
	3. Hashing con HMAC para garantizar integridad
	4. Autenticación mediante certificados digitales para verificar la identidad del servidor
    
2. **Compara las versiones TLS 1.2 y TLS 1.3 en términos de seguridad y rendimiento. ¿Por qué se recomienda usar TLS 1.3?**
	1. Porque es más seguro y rápido
    
3. **¿Cuál es la función de los certificados digitales en HTTPS y cómo contribuyen a la autenticidad del servidor?**
	1. verificar la autenticidad al servidor con una AC
    
4. **Analiza las diferencias entre los certificados DV, OV y EV. ¿En qué contextos es más recomendable cada uno?**
	1. DV `domain validation`
		1. personales y negocios pequeños
		2. validación básica de control sobre dominio
	2. OV `organization validation`
		1. verifica la propiedad del dominio y datos corporativos
		2. empresas normales
	3. EV
		1. revisión exhaustiva de la entidad
		2. entidad bancaria y gubernamental 
    

---

### 🌐 **Protocolos de transporte web (HTTP2/3, SPDY, QUIC)**

5. **Describe las mejoras que HTTP/2 introduce respecto a HTTP/1.1, especialmente en cuanto a eficiencia y seguridad.**
	1. conexión única multiplexada
		1. menos conexiones simultaneas
	2. envío proactivo de recursos
	3. priorización y control de flujo 
    
6. **Explica cómo QUIC soluciona problemas del protocolo TCP en redes con alta latencia o pérdida de paquetes.**
	1. Trabajando con UDP
    
7. **HTTP/3 utiliza TLS 1.3 de forma integrada. ¿Qué ventajas ofrece esta integración en comparación con versiones anteriores?**
	1. más seguro 
	2. protegido ante ataques intercepción 
	3. menos vulnerable ante ataques de DDoS
	4. menos latencia
    
8. **¿Qué rol tiene la multiplexación en SPDY y HTTP/2 y cómo afecta el rendimiento de la carga de páginas web?**
	1. menos conexiones simultaneas
    

---

### 🔒 **SSH y Seguridad de Acceso**

9. **Describe el proceso de autenticación basado en clave pública en SSH. ¿Por qué se considera más seguro que el uso de contraseñas?**
	1. porque usa cifrado híbrido 
    
10. **Menciona y explica al menos tres aplicaciones prácticas del protocolo SSH en la administración de sistemas.**
	1. aplicaciones administradoras
	2. transferencia segura de archivos (SCP, SFTP)
	3.  Acceso remoto a servicios internos 
	4. protección adicional mediante encapsulación de tráfico
    

---

### 🌍 **Seguridad a nivel de red: IPSec y VPN**

11. **Compara el modo transporte y el modo túnel en IPSec. ¿En qué escenarios se recomienda cada uno?**
	1. cuando solo es importante encapsular información útil en modo transporte
	2. cuando sea necesario guardar toda la información del paquete
    
12. **Explica cómo funciona una VPN y menciona tres tecnologías comunes utilizadas para implementarlas.**
	1. IPSec, WireGuard, OpenVPN
	2. Conecta dispositivos en una red pública 
    
13. **WireGuard ha ganado popularidad en entornos modernos. ¿Qué ventajas tiene respecto a protocolos tradicionales como OpenVPN o PPTP?**
	1. Facil de configurar
	2. eficiente
    

---

### 📶 **Protocolos especializados**

14. **DTLS es una variante de TLS adaptada para UDP. ¿Por qué es útil en aplicaciones como VoIP o juegos online?**
	1. porque tiene baja latencia y no hay errores por perdida de paquetes
    
15. **Analiza los riesgos de usar STARTTLS si no se configura adecuadamente. ¿Qué ataques puede sufrir?**
	1. puede sufrir ataque de DDoS
    
16. **¿Qué es mTLS y en qué contextos se justifica su uso? Menciona ejemplos prácticos.**
	1. TLS pero ambos necesitan mostrar sus certificados. 
	2. En sitios donde no suele ser muy confiable los dispositivos o usuarios
	3. Api segura entre microservicios 
	4. Acceso controlado a plataformas en la nube

# Tema 10

### 🔐 **Ejercicio 1: Seguridad en sistema web de laboratorio clínico**

1. ¿Qué función tiene la sal (`sal`) en el proceso de autenticación?
	1. Evita ataques por diccionarios y uso de hashes precalculados
    
2. ¿Qué función cumple Argon2 en el registro de usuarios?
	1. Deriva un hash seguro de la clave para almacenamiento, resiste ataques a fuerza bruta
    
3. ¿Qué algoritmo de resumen se propone para derivar `kLogin`?
	1. SHA-512
    
4. ¿Qué protocolos de transporte se deben usar para proteger la comunicación web?
	1. Https (TLS)
    
5. ¿Qué modo de AES permite acceso aleatorio en el cifrado a nivel de disco?
	1. XTS para accesos aleatorios al disco
    
6. ¿Qué algoritmos se sugieren para firmar los resultados clínicos digitalmente?
	1. RSA - 3027 o ECDSA (DSA con curvas elípticas) (con SHA-512 como resumen)
    
7. ¿Por qué es importante que las claves públicas estén firmadas por una autoridad certificadora?
	1. Para evitar suplantación y garantizar la autenticidad del firmante
    

---

### 📝 **Ejercicio 2: Registro digital con validez legal**

8. ¿Qué papel juega la marca temporal en la solicitud firmada?
	1. aporta validez legal, evita repeticiones y prueba de momento de creación 
    
9. ¿Cómo garantiza la firma digital la autoría de una solicitud?
	1. que no está siendo suplantado 
    
10. ¿Qué se cifra con la clave pública de la entidad para asegurar la confidencialidad?
	1. Porque solo el propietario de la clave privada puede generar una firma válida
    
11. ¿Qué algoritmo se sugiere para el cifrado simétrico de los datos enviados?
	1. AES (modo adecuado como CTR)
    
12. ¿Por qué es importante que las claves públicas estén certificadas por una entidad reconocida?
	1. para que no suplanten la entidad a solicitar y validez legal del proceso
    
13. ¿Qué técnica se propone para transmitir una clave simétrica de forma segura?
	1. cifrarlo con clave pública de la entidad (cifrado híbrido)
    
14. ¿Qué protocolo se emplea para asegurar el transporte de datos en ambos ejercicios?
	1. HTTPS (TLS)


# Tema 11

### 🧠 Atacantes

1. ¿Qué es un atacante mercenario?
	1. un espía un atacante contratado
    
2. ¿Qué porcentaje de ataques proviene del interior?
	1. un 48%
    
3. ¿Quiénes suelen ser los atacantes internos?
	1. Empleados recientemente despedidos, contratista o empresas aliadas
    
4. ¿Qué es un script kiddie?
	1. es un atacante sin conocimiento alguno que utiliza herramientas automáticas
    
5. ¿Qué diferencia hay entre un hacker y un script kiddie?
	1. que el hacker tiene conocimientos previos
    
6. ¿Qué grupo usa a menudo herramientas automatizadas?
	1. anonymous usa habitualmente los script kiddie
    

### 🎯 Niveles de conocimiento

7. ¿Qué nivel tiene métodos avanzados y recursos ingentes?
	1. nivel elite 
    
8. ¿Qué nivel no requiere conocimientos?
	1. Ninguno 
    
9. ¿Qué nivel puede modificar algo pero con recursos limitados?
	1. Moderado
    

### 🦠 Malware - Tipos y funciones

10. ¿Qué tipo de malware roba contraseñas?
	1. keylogger
    
11. ¿Cuál se oculta como software legítimo?
	1. troyano
    
12. ¿Qué malware bloquea el acceso y pide rescate?
	1. ransonware 
    
13. ¿Qué diferencia hay entre virus y gusano?
	1. el virus requiere que alguien pase un fichero infectado y que otro alguien lo ejecute. 
	2. El gusano se propaga por la red y aprovecha vulnerabilidades de SO o aplicaciones y se puede usar de forma remota.
    
14. ¿Qué malware se activa al arrancar el sistema?
	1. Virus de arranque 
    
15. ¿Qué hace un virus fraccionado?
	1. Es un programa que tiene el virus dividido y insertado aleatoriamente por el programa
    
16. ¿Qué son los virus de macro?
	1. un macro es una serie de instrucciones para automatizar tareas suelen ir asociados a ficheros de datos y se activan al abrir el fichero 
    
17. ¿Qué es un virus asociado?
	1. suelen sustituir una herramienta del sistema legitimo con otra extensión 
    
18. ¿Qué hacía el gusano de Morris en 1988?
	1. infectó 6000 máquinas 
    
19. ¿Qué tipo de malware depende del usuario para propagarse?
	1. un virus
    

### 🕵️‍♂️ Ocultación

20. ¿Qué es un troyano?
	1. Un programa que aparentemente hace una actividad pero ocultamente hace otra maliciosa
    
21. ¿Qué hace un rootkit?
	1. una herramienta que modifica el SO para ocultar la existencia de otros malwares
    
22. ¿Cómo se detectan los rootkits?
	1. si los ficheros han sido cambiados, comparandolos con las versiones originales, aunque a bajo nivel son dificiles de detectar
    
23. ¿Qué es una bomba lógica?
	1. es un programa que no hace nada hasta que se cumple una condición 
    
24. ¿Qué condiciones activan una bomba lógica?
	1. fecha, acciones, etc 
    
25. ¿Qué es una puerta trasera?
	1.te permite tener acceso sin pasar por el sistema de seguridad, muchas veces suele ser por que los desarrolladores olvidan eliminar un acceso directo para pruebas o depuracion 
    

### 🛠 Beneficio del malware

26. ¿Qué es una botnet?
	1. es una red de ordenadores infectados que hacen con control remoto por un atacante
    
27. ¿Qué usa una botnet para comunicarse hoy en día?
	1. con HTTP, en lugar de IRC
    
28. ¿Qué es un zombie?
	1. un ordenador infectado con control remoto que forma parte de un botnet
    
29. ¿Qué hace un spyware?
	1. espia al usuario y obtiene información sin su consentimiento
    
30. ¿Qué efectos produce el adware?
	1. cuelgue de la maquina
	2. contenido inapropiado 
	3. falta de productividad
    
31. ¿Cómo funciona un keylogger?
	1. una herramienta que se utiliza para capturar y almacenar las pulsaciones de un teclado 
    
32. ¿Qué datos roba un keylogger?
	1. contraseñas
	2. N.º tarjeta
	3. información personal 
    
33. ¿Qué hizo el ransomware PC Cyborg en 1989?
	1. cifrado de los ficheros del disco duro y alega que la licencia a expirado
    
34. ¿Qué usó Stamp.EK como cebo?
	1. fotos de famosos desnudos falsas
    

### 🎭 Ingeniería social

35. ¿Qué es el phishing?
	1.  un email o sitio que parece legitimo de alguna entidad confiable para robar información sensible
    
36. ¿Qué es spear phishing?
	1. está dirigido a una persona o grupo especifico 
    
37. ¿Qué es un hoax?
	1. aviso falso de virus por ejemplo que induce a errores
    
38. ¿Qué daño puede causar el spam?
	1. Puede ir acompañado de otro malwares y reduce productividad
    
40. ¿Qué es el spim?
	1. spam pero con mensajería instantánea
    
41. ¿Cómo engaña un técnico falso?
	1. un supuesto técnico informático para que modifiques ciertos ficheros o cambies ajustes del sistema de seguridad para que dejes vía libre para que el atacante pueda entrar

# Tema 12

### Aplicaciones Web

1. ¿Qué es XSS?
	1. un ataque donde se inyecta un script malicioso en sitio web para que se ejecute en el navegador del usuario 
    
2. ¿Para qué se usa la inyección SQL?
	1. para insertar comandos maliciosos en una base de datos mediante entradas no validadas 
    
3. ¿Qué tipos de XSS existen?
	1. reflejado, basado en DOM, almacenamiento 
    
4. ¿Qué tipo de entrada aprovechan los ataques XSS?
	1. las entradas del usuario que no son validadas ni filtradas
    
5. ¿Qué puede robar un atacante con XSS?
	1. redirigir usuarios o toma de control de cuentas, credenciales, cookies
    
6. ¿Qué es una inyección XML?
	1. el XML no tiene unas etiquetas predefinidas así que se pueden añadir las etiquetas definidas por el atacante debajo del XML de entrada.
	2. Introducir XML malicioso en entradas no validadas para explotar vulnerabilidades
    
7. ¿Qué lenguajes similares a XML pueden ser vulnerables?
	1. JSON, YAML, entre otros 
    
8. ¿Qué es una inyección de comandos?
	1. inyectar comandos arbitrarios en el servidor mediante entradas manipuladas
    
9. ¿Qué es el directory traversal?
	1. técnica para escapar del directorio raíz y acceder a archivos restringidos
    
10. ¿Qué tipo de protección evita XSS?
	1. validación y filtrado de todas las entradas y salidas
    
11. ¿Qué es un ataque reflejado?
	1. un tipo de XSS que se activa a través de url maliciosas y no se almacenan en el servidor 
    
12. ¿Qué es un ataque XSS almacenado?
	1. el script malicioso que se guarda en el servidor y que se ejecuta cada vez que se carga
    
13. ¿Qué es un ataque XSS basado en DOM?
	1. se modifican directamente el DOM (document object model) del navegador sin necesidad de respuesta del servidor 
    

---

### Cadena de Suministro

14. ¿Qué es un ataque a la cadena de suministro?
	1. Se manipula el sw o hw antes de llegue al consumidor final para distribuir malware o algo con actividad maliciosas
    
15. ¿Cómo se protege una organización ante estos ataques?
	1. Auditorias rigurosas, usar SW verificado, aplicar seguridad por capas
    
16. ¿Qué es el caso de SolarWinds?
	1. un ataque donde se comprometió el sw de gestion de redes orion afectando a empresas privadas y gubernamentales globales
    
17. ¿Qué lenguaje tiene gestión de vulnerabilidades incorporada?
	1. Go
    
18. ¿Qué ocurrió con la librería XZ?
	1. se introdujo una puerta trasera severa que afectaba el sistema SSH
    

---

### Ataques en el Cliente

19. ¿Qué es un ataque de “drive-by download”?
	1. el atacante inyecta un script en un servidor y cuando accede un usuario se descarga y se instala
    
20. ¿Qué tipo de contenido se usa en ataques drive-by?
	1. scripts ocultos como Js, flash
    
21. ¿Qué es session hijacking?
	1. el atacante usa el token que se crea al iniciar sesión con usuario y contraseña, para acceder a tu cuenta
	2. Suplanta la identidad de un usuario robando su token de sesión. 
    
22. ¿Qué es CSRF?
	1. aprovecha que usuario está autentificado en un sitio web del navegador para hacer cosas sin consentimiento
    
23. ¿Qué condiciones necesita un ataque CSRF?
	1. tienen que tener sesión activa en ese momento y visite una página con código malicioso
    
24. ¿Qué hacen los tokens CSRF?
	1. evitar que un tercero pueda acceder a tu cuenta sin consentimiento, comprueba que solo tu eres el que está autenticado
    
25. ¿Qué significa SameSite en cookies?
	1. Atributo que evita que las cookies se envíen en solicitudes entre sitios
    
26. ¿Qué puede pasar si se manipulan las cabeceras HTTP?
	1. que se podría lograr inyección SQL o acceso a directorios no autorizados
    

---

### Cookies

27. ¿Qué es una cookie segura?
	1. que la información se transmite por cifrada con TLS
    
28. ¿Qué es una cookie persistente?
	1. que se guarda en el disco y aguanta varias sesiones
    
29. ¿Qué es una cookie de terceros?
	1. provienen de otros sitios web o dominio 
    
30. ¿Qué es una cookie flash?
	1. cookie de adobe que no se borran desde el navegador, ocupan 25 veces más que las normales y permite regenerar cookies borradas y bloqueadas
	2. Difícil de borrar 
    
31. ¿Qué riesgos presentan las cookies?
	1. si son robadas puede obtener información sensibles y hacerse pasar por el usuario (las de primera mano)
	2. Las de terceros pueden monitorizar cada tu navegacion a lo largo de mucha web
	3. Robo de identidad, seguimiento del usuario, pérdida de privacidad
    

---

### Extensiones y Navegador

32. ¿Qué es ActiveX?
	1. Es una extension de microsoft que permite compartir recursos, comunicar procesos y servicios avanzados y multimedia
	2. Extensión que permite funcionalidades avanzadas en el navegador
    
33. ¿Por qué ActiveX es peligroso?
	1. porque tiene acceso al disco entero y SO y se instala el mismo para todas los usuario de un mismo dispositivo y puede ser ejecutado de forma independiente al navegador 
    
34. ¿Qué es WebAssembly?
	1. extensión para ejecutar código debajo nivel en navegadores de forma segura y rápida
    
35. ¿Qué es gVisor?
	1. Sandbox de google que aísla aplicaciones para mejorar seguridad
    

---

### Desbordamiento

36. ¿Qué es un buffer overflow?
	1. es cuando se quiere guardar algo con una memoria mayor que el buffer y se desborda 
	2. Error que ocurre al escribir más datos de los que el buffer soporta
    
37. ¿Qué consecuencias tiene un buffer overflow?
	1. puede ejecutar contenido arbitrario como código malicioso y caídas del sistema
    
38. ¿Qué técnicas mitigan el buffer overflow?
	1. proteccion de segmento, aleatorizacion del segmento, recolector de basura
    

---

### Ataques de Red

39. ¿Qué es un ataque DoS?
	1. Ataque que busca colapsar el sistema agotando los recursos
    
40. ¿Qué diferencia hay entre DoS y DDoS?
	1. DDoS usa múltiples dispositivos para atacar simultáneamente 
    
41. ¿Qué herramientas se usan para ataques DoS?
	1. Agobot, Trinoo, Shaft, Stacheldraht
    
42. ¿Qué es la amplificación DNS?
	1. Técnica en la que una petición pequeña genera una respuesta muy grande
    
43. ¿Qué es una botnet?
	1. Un conjunto de ordenadores controlados por un atacante para hacer peticiones en masa
    
44. ¿Qué medidas pueden mitigar un DDoS?
	1. hacer Escalable con Cloud computing
	2. Filtrado de tráfico (limitar tráfico)
	3. HoneyPots
	4. IDS/IPS
    
45. ¿Qué es un honeypot?
	1. Trampa que simula sistemas vulnerables para atraer y estudiar atacantes

    
46. ¿Qué es un IDS?
	1. Sistema de detección de intrusos que analiza tráfico sospechoso
    

---

### Intercepción y Suplantación

47. ¿Qué es un ataque Man-in-the-Middle?
	1. Cuando un atacante se intercepta los mensajes entre dos o mas dispositivos. Lo lee y lo vuelve a enviar.
    
48. ¿Cuál es la diferencia entre MITM activo y pasivo?
	1. El pasivo no modifica el mensaje despues de leerlo 
    
49. ¿Qué es ARP poisoning?
	1. Cambiar la MAC de un dispositivo editando la caché ARP para que la IP apunte a un ordenador distinto malicioso 
	2. Alterar las entradas ARP
    
50. ¿Qué ataques permite ARP poisoning?
	1. Cambiar la MAC gateway para que no tenga internet ese dispositivo (Denegación de acceso)
	2. Cambiar la MAC de red para que le lleguen los mensajes al atacante (MitM) y robar datos o para que no lleguen a su destino (DoS)
    
51. ¿Qué es DNS poisoning?
	1. sistituir la ip por una fraudulenta para un nombre del sistema DNS
	2. Manipular el sistema DNS para redirigir a los usuarios a direcciones falsas
    
52. ¿Dónde se puede realizar DNS poisoning?
	1. en Zone Transfers para convencer a DNS para que acepte la IP fraudulenta 
	2. En la tabla de hosts local o en servidores DNS externos

# Tema 13
### 🔵 **Bluetooth**

1. ¿Qué es Bluejacking?
	1. Cuando un atacante aprovecha el bluetooth para enviarte mensajes sin consentimiento a algún dispositivo
    
2. ¿Qué es Bluesnarfing?
	1. Acceso no autorizado a datos por Bluetooth
    
3. ¿Qué cifrado usa Bluetooth clásico?
	1. cifrado E0
    
4. ¿Qué protocolo de cifrado usa BLE?
	1. Aes-ccm
    
5. ¿Qué es SSP?
	1. un tipo de emparejamiento de intercambio de claves que usa ECDH 
	2. Simple Secure Pairing
    
6. ¿Qué versión introdujo BLE?
	1. Bluetooth 4.0
    
7. ¿Qué versión añadió direcciones privadas?
	1. Bluetooth 4.2
    
8. ¿Qué mejora de seguridad trajo Bluetooth 5.2?
	1. múltiples conexiones seguras (EATT)
    

---

### 🟢 **Wi-Fi (general)**

9. ¿Qué es un adaptador wireless?
	1. un dispositivo que permite conectar un dispositivo a una red Wifi
    
10. ¿Qué velocidad tiene IEEE 802.11n?
	1. 600Mbps
    
11. ¿Qué riesgo hay si el tráfico no está cifrado?
	1. Que pueden capturar los paquetes y obtener datos sensibles como robar contraseñas e información privada
    
12. ¿Qué es un ataque DoS por interferencia?
	1. Aprovechar dispositivos que crean interferencias, para que un dispositivo no pueda conectarse con el PA
    
13. ¿Qué es el beaconing?
	1. Transmitir cada 10 microsegundos para detectar las redes wifi y catalogarlas
    
14. ¿Qué es el war driving?
	1. pasearse a pie o en coche con un dispositivo móvil buscando redes wifi
    
15. ¿Qué modo permite capturar paquetes sin estar conectado?
	1. modo monitor
    
16. ¿Qué es un punto de acceso gemelo maligno?
	1. Imitación de un PA legítimo para interceptar tráfico.
	2. Instalar un punto de acceso supuestamente legítimo para que diferentes dispositivos se conecten a este y capturar los paquetes que se envien a este
    

---

### 🔴 **Wi-Fi (seguridad)**

17. ¿Qué es el filtrado MAC?
	1. restringir el acceso a MAC especificas
    
18. ¿Qué vulnerabilidad tiene ocultar el SSID?
	1. El SSID se puede detectar en otros paquetes
    
19. ¿Qué estándar usa WEP?
	1. IEEE 802.11
    
20. ¿Qué tamaño tiene el IV en WEP?
	1. 24 bits
    
21. ¿Por qué es inseguro el WEP?
	1. A partir de cierta cantidad de paquetes el IV se empieza a repetir, si tienes varios paquetes es trivial, con descifrar uno ya los descifras todos
	2. IVs se repiten y permite romper el cifrado
    
22. ¿Qué protocolo reemplazó a WEP en WPA?
	1. TIKP
    
23. ¿Qué función cumple el MIC en WPA?
	1. verifica integridad de los datos
    
24. ¿Qué usa WPA2 para cifrar?
	1. AES-CCMP para cifrado de datos 
    
25. ¿Qué es AES-CCMP?
	1. Una combinación de AES-CTX para privacidad y AES-CBC para integridad de los datos
	2. cifrado y control de integridad usado en WPA2
    
26. ¿Qué rol cumple IEEE 802.1x?
	1. autentificación antes de permitir tráfico
    
27. ¿Qué es EAP?
	1. Un framework que define mensajes a usar en el protocolo de autentificación
	2. Framework para autentificación en redes
    
28. ¿Qué mejora trajo WPA3?
	1. Mejor protección de contraseñas (SAE)
    
29. ¿Qué es SAE?
	1. protocolo de intercambio de claves seguro basado en dragonfly
    
30. ¿Qué ventaja ofrece el cifrado individualizado?
	1. cifra el tráfico de datos entre el punto de acceso y el dispositivo
    

---

### 🟡 **Otros aspectos**

31. ¿Qué es una WVLAN?
	1. una red virtual wireless
	2. permite tener más seguridad segmentando por roles y usuarios la red en una a varias
    
32. ¿Qué ventajas ofrece el control de potencia?
	1. Ajustarlo correctamente a la zona de la señal a la que se quiere alcanzar
    
33. ¿Qué es LoRaWAN?
	1. usa un clave para redes y otra para aplicación 
	2. Usa Protocolo IoT AES-128
    
34. ¿Qué cifrado usa Zigbee?
	1. cifrado AES-128
    
35. ¿Qué es Z-Wave S2?
	1. Usa AES-128 y seguridad con ECDH y autentificación PIN o QR

# Tema 14
### 🔐 **Gestión de contraseñas**

1. ¿Qué usan los gestores de contraseñas para proteger la información?
	1. cifrado avanzado
    
2. ¿Qué permite una contraseña maestra?
	1. acceder a todas las contraseñas almacenadas
    
3. ¿Qué tipo de contraseñas pueden generar los gestores?
	1. contraseñas seguras, complejas y únicas para cada cuenta
    
4. ¿Los navegadores generan contraseñas seguras?
	1. no 
    
5. ¿Qué limitación tiene el almacenamiento de contraseñas en navegadores?
	1. Que pueden ser accesibles las contraseñas si el dispositivo está comprometido 
    
6. ¿Los gestores permiten sincronización entre dispositivos?
	1. si, segura entre múltiples dispositivos
    

---

### ✅ **2FA y Biometría**

7. ¿Qué es un segundo factor en 2FA?
	1. Un código o dispositivo adicional además de la contraseña
    
8. ¿Qué es una llave de seguridad como YubiKey?
	1. un dispositivo físico que genera código de autentificación 
    
9. ¿Qué aplicación genera códigos TOTP?
	1. Google Authentication o Authy
	2. aplicaciones de autentificación en general
    
10. ¿El 2FA protege contra phishing?
	1. Si, reduce la efectividad del phising Porque se necesita de este segundo factor para acceder y con las credenciales solo no te permite acceder
    
11. ¿Qué métodos biométricos existen?
	1. huella dactilar, reconocimiento facial, reconocimiento de iris, otros
    
12. ¿La biometría es fácil de falsificar?
	1. no, es difícil de replicar
    
13. ¿Qué problema tiene el reconocimiento facial en algunas condiciones?
	1. problemas de no reconocer correctamente fallando en ciertas condiciones
    

---

### 💾 **Cifrado de disco**

14. ¿Qué protege el cifrado de disco completo?
	1. todo el disco, incluyendo SO, archivos y espacio libre
    
15. ¿Qué tipo de archivos cifra el nivel de carpeta?
	1. solo Los archivos o carpetas seleccionados
    
16. ¿Qué sistema usa BitLocker?
	1. Window
    
17. ¿Qué necesita BitLocker para funcionar?
	1. TPM
	2. a no ser que se hagan configuraciones adicionales
    
18. ¿Qué sistema operativo usa FileVault?
	1. MACos
    
19. ¿El cifrado afecta el rendimiento?
	1. minimamente
    
20. ¿Qué otro software de cifrado se puede usar en Linux?
	1. LUKs ,eCryptFS, VeraCrypt
    

---

### 🔒 **Ventajas del cifrado**

21. ¿Qué algoritmo de cifrado es común?
	1. Aes-256
    
22. ¿El cifrado protege datos si se pierde el dispositivo?
	1. si, evita accesos no autorizados
    
23. ¿Qué ataques previene el cifrado?
	1. ataques de fuerza bruta y ataques de arranque frio en caso de memoria volatil y otros malwares
    
24. ¿Qué regulaciones exigen cifrado?
	1. las proteccion de datos (GDPR HIPAA)
    

---

### 💽 **Backup**

25. ¿Qué es un backup completo?
	1. Una copia de seguridad que hace copia de todos los archivos seleccionados cada vez que se hace el backup
    
26. ¿Qué es un backup incremental?
	1. solo cambia los archivos que han sufrido de cambios desde el anterior backup
    
27. ¿Qué significa la estrategia 3-2-1?
	1. tres copias de seguridad
	2. dos medios distintos (por ejemplo, disco duro y nube)
	3. una copia externa - fuera del sitio local
    
28. ¿Qué motiva la creación de copias de seguridad?
	1. recuperación de datos en caso de fallos de HW, fallos humanos, ataques de malwares, desastres naturales
    
29. ¿Cómo ayuda el backup frente al ransomware?
	1. a recuperar los datos cifrados por el ransomware sin pagar rescate
    

---

### ☁️ **Backup: almacenamiento**

30. ¿Qué ventaja tiene una SSD frente a un disco duro?
	1. que es más rápido y duradero
    
31. ¿Qué desventaja tiene el almacenamiento en la nube?
	1. que tienes que tener conexión a internet y una política de seguridad con el proveedor
    
32. ¿Qué es un NAS?
	1. almacenamiento conectado a la red centralizado
    
33. ¿Qué empresa usa cintas de backup?
	1. las grande empresas que necesitan copias de gran cantidad de datos durante mucho tiempo
    

---

### 📋 **Backup: buenas prácticas**

34. ¿Por qué se debe automatizar el backup?
	1. para garantizar que se realice sin interactuar manualmente
    
35. ¿Qué se debe probar regularmente en un backup?
	1. se debe verificar que los datos se guardan correctamente y detectar y corregir errores
	2. la restauración e integridad de los datos
    
36. ¿Qué datos se deben cifrar en un backup?
	1. datos sensibles, especialmente los datos almacenados fuera del sitio
    
37. ¿Por qué es importante la eliminación segura de backups antiguos?
	1. para liberar memoria y asegurarse de que la eliminación cumple con la normativa
    

---

### 📚 **Casos reales**

38. ¿Qué causó el gusano Morris?
	1. Un error en el código que causó denegación de servicio
    
39. ¿Qué robó la Operación Aurora?
	1. Datos de Google, Adobe y otras empresas
    
40. ¿Qué explotó Conficker?
	1. vulnerabilidades de Windows
    
41. ¿Qué atacó Stuxnet?
	1. sistema de SCADA como instalaciones nucleares de irán 
    
42. ¿Qué filtraron en el ataque a Sony?
	1. películas inéditas, correos, datos personales
    
43. ¿Qué datos se robaron en Yahoo!?
	1. Datos de 3000 millones de cuentas
    
44. ¿Qué tipo de dispositivos se usaron en el ataque a Dyn?
	1. Dispositivos IoT comprometidos aprovechando vulnerabilidades
    
45. ¿Cuántos datos se comprometieron en Equifax?
	1. N.º de tarjeta, n.º de la seguridad social, fecha de nacimiento, direcciones
	2. 147M de personas afectadas
    
46. ¿Qué sistemas se vieron afectados por WannaCry?
	1. dispositivos con SO Windows aprovechando sus vulnerabilidades, hospitales y servicios esenciales en más de 150 países