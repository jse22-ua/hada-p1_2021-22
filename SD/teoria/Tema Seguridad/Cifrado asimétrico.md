Se genera un par de claves
- Pública (para cifrar)
	- Se puede difundir entre quienes quieran enviar mensajes cifrados
- Privada (para descifrar)
	- Nunca es revelada

Complejo computacionalmente y lento

Longitud de claves son más largas que el [[Cifrado simétrico]]

Genial para
- distribuir claves
- Sistemas de autentificación 
- cifrar pequeñas cantidades de información

## Principales Algoritmos 

### RSA 

Se utiliza con mayor frecuencia. 

Consiste en factorizar números primos y se basa en el producto de dos número primos enormes (orden de 2^100).

Clave entre 512 y 3072 bits

#### Procedimiento 
Tienes dos claves Kpub y Kpriv
1. Elegir dos primos grandes, P y Q (de por ejemplo 1024 bits)
$$
	 N = P x Q
$$
$$
	Φ(N) = (P-1)x(Q-1)
$$
2. Para Kpub elegir un número primo respecto a E y no debe tener factores comunes con Φ(N)
3. Para encontrar Kpriv se resuelve la ecuación 
$$ 
Kpriv * Kpub = 1 mod E
$$
	1. Kpriv es el elemento más pequeño divisible por Kpub en la serie de Φ
	![[rsa.png]](N) + 1 , 2Φ(N)+1....
### ECC

Cálculo de curvas elípticas. 
Usado en intercambio de claves y firma digital
Más rápida que RSA y utiliza claves más cortas (256 bits)

Esta clave de 256 bits ofrece la misma seguridad que una clave de 3072 bits.

Escala mejor que RSA.

#### Procedimiento 

Se eligen un número primo máximo, una ecuación de la curva y un punto público en la curva. 

Una clave privada es un número privado y se utiliza conjuntamente con la clave pública para el cálculo.

El cálculo de la clave privada a partir de la clave pública en
este tipo de criptosistema se denomina ==función de logaritmo discreto de curva elíptica== que no se conoce solución hasta la fecha.

#### Caso 

Alice y Bob acuerdan usar la misma curva (con otros parámetros ) y luego eligen un punto aleatorio G en la curva. Ambos eligen un número secreto (a,b). Alice multiplica el punto G por sí mismo "a" veces y Bob hace lo mismo "b" veces.

Cada uno tiene un punto A = aG y B=bG que se intercambian. Partiendo de este nuevo punto, Alice y Bob vuelven a multiplicar su nuevo punto por su propio número secreto, para generar S. 
Por ello, S = a(bG) = b(aG)

### DSA 

Orientado a las firmas digitales.

Sirve para firmar pero no para autentificar

Desventaja requiere mucho más tiempo de computo que RSA
