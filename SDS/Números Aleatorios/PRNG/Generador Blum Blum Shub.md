Es demostrablemente seguro 
- Se basa en problemas matemáticos conocidos
- parecidos a los utilizados en criptografía de clave pública

Se eligen dos primos muy grandes 

	p = q = 3 mod 4
	n = pq
	X0 = s^2 mod n
	Xi = (Xi-1)^2 mod n 
	Bi = Xi mod 2

La secuencia son distintos bits Bi
s es la semilla 

No existe un algoritmo en tiempo polinomial 
que permite siguiente bit

Muy lento 
Por ello se usa para
Secuencias cortas
- claves
- valores pequeños 
- desafíos (nonce)