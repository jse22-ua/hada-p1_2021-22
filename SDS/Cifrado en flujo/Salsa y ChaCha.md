
enviado a eStream 

Basado en funciones pseudoaleatorias de 512 bits como
- suma en 32bits
- XOR entre bits
- Rotaciones

valor de 512bits a partir 
a partir de clave de 256 bits
nonce de 64 bits -> número que no se puede repetir 
posición de 64

de 4 a 14 ciclos por byte
- Medida de CPU

se puede obtener
cualquier parte de la secuencia
sin generar los bits previos
- Ideal para cifrado de disco o acceso aleatorio 


## Variantes

### Salsa 20 -> 20 rondas 
- Salsa 20/8 (8 rondas)
- Salsa 20/12 (12 rondas)

### Chacha20 -> MEJOR DE SALSA20

Incrementa la difusión por ronda
mejora rendimiento 
modifica la función de ronda

v1 -> nonce 12 Bytes (chacha20 normal) 
- Sigue en uso 

v2-> nonce 24Bytes  (Xchacha20 -> mejor)


## Elección en eStream 

Se obtuvo grandes votaciones en dos fases
Pero en la ultima fase se considero
no apto para entornos HW restringidos


## Criptoanálisis

Sin ataques conocidos para salsa20/12 y salsa20 completo

existe un ataque que rompe salsa20/8
