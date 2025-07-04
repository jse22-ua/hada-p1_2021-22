4 parámetros :
- m módulos 
- a coeficiente
- c incremento 
- X0 semilla 

Por lo que la secuencia de números X saldría de 
	Xn+1 = (a·  Xn + c) mod m

Por ejemplo, el rand de programación es 

a = 7^5
c = 0
m = 2^31 - 1

Solo son necesarios 
4 valores consecutivos
para romperlo mediante 
sistema de ecuaciones lineales

Útil en estadística 
No en Criptografía