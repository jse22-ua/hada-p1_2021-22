
## Ejemplo 1

Dado como entrada: 
- Un carácter X cualquiera 
- Un número N entre 5 y 10
- Un valor "rojo" o "azul"

Devuelve como salida 
 - N carecteres X de color rojo o (N-1) caracteres de color azul o mensaje de Error  si valor de N incorrecto

Entrada 1 (C): carácter (car) #4
- Clase válida: C1 car puede ser cualquier carácter

Entrada 2 (U): número (n) #1
- Clase válida:
	- U1 entre 5 y 10
- Clases invalidas:
	- NU1 (N<5)
	- NU2 (N>10)

Entrada 3(L): color(c) #4
- Clase válida:
	- L1 (c = "rojo")
	- L2 (c = "azul")

Salida (S): String de n caracteres
- Clase válida: S1 cadena de n caracteres de color rojo
- Clase válida: S2 cadena de n-1 caracteres de color azul
- Clase invalida: NS1 "Error: repite entrada"

![[Pasted image 20250315165906.png]]


## Ejemplo 2: validación fecha

Valida_fecha()

Entradas: 
- tipo entero (estos deben ser ser correctos y si es así devolver falso y true) Damos por hecho que el año no es bisiesto
	- día 
	- mes

Salida:
- Booleano indicando que la fecha es correcta

Agrupamos la entrada como día y mes
por lo que usaremos la regla 6 para subdividir tanto el día como el mes en particiones más pequeñas

Entrada 1 + 2 (DM): agrupamos las entradas d+m que representan el dia y el mes respectivamente
- Clases validas:
	- DM1: d = {1...28} ^ m = {1...12}
	- DM2: d = {29,30} ^ m = {1,3,4,5...12}
	- DM3: d = {31} ^ m = {1,3,5,7,8,10,12}
- Clases inválidas:
	- NDM1 d > 31 ^ m={1...12}
	- NDM2 d < 1 ^ m={1...12}
	- NDM3 d = 31 ^ m={2,4,6,9,11}
	- NDM4 m > 12 ^ d={1...31}
	- NDM5 d ={29,30} ^ m={2}
	- NDM6 m < 1 ^ d={1...31}

Salida (S): valor booleano (s)
- clase válida: 
		S1: s = true
	
- clase inválida:
	- NS1: s = false


## Ejemplo 3: El problema del triángulo

Entrada 3 números enteros que dada la longitud de los lados de un triángulo. Cada uno de valor positivo menor o igual a 20. 

Si a = b = c "equilatero"
si a = b o c = b o a = c  y el otro desigual "isosceles"
si todos son desiguales "escaleno"
Si a >= b+c o b>=c+a o c>=a+b "No es un triángulo"

Entrada agrupada 1+2+3 (C): valores a,b,c
- Clases válidas:
	- C1: a = b = c 
	- C2: (a=b & c!=a) | (a=c & a!=b) | (b = c & b != a)
	- C3: (a!=b)& b!=c & a!=c
	- C4:  a >= b+c | b>=c+a | c>=a+b 
- Clases inválidas
	- NC1: a> 20
	- NC2: a<=0
	-  NC3: b> 20
	- NC4: b<=0
	-  NC5: c> 20
	- NC6: c<=0

Salida (S): string (s) 
- Clases válidas:
	- S1: "Equilátero"
	- S2: "Isósceles"
	- S3: "Escaleno"
	- S4: "No es un triángulo"
- Clases inválidas:
	- NS1: ???

