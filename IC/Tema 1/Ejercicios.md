## Ejercicio 1

- Memoria entrelazada de orden inferior
- Acceder de forma simultanea [[Acceso a memoria simultáneo o Tipo S]]
- Se quiere evaluar en operaciones tipo Vectorial - Escalar
	- Multsv V2, F0, V1
	- que realiza fx vi->vj almacenamiento con un stride = 3
- 8 bloques de memoria 
	- Empieza por dirección 01C2 
- vector operador V1 tiene 10 elementos

¿ Cuantos accesos a memoria serán necesarios para recuperar el contenido del vector V1?
![[ej1.png]]

- Solución: 4 accesos a memoria

¿Si el tipo es de Acceso concurrente [[Acceso a memoria concurrente o Tipo C]]?

![[ej1 1.png]]


Si el entrelazado es superior se ordenaría de manera distinta en diferentes direcciones de memoria, así que, podrían dar tiempo distintos.

## Ejercicio 2

![[Pasted image 20241231175704.png]]
- Carga 7 ciclos 
- Suma 3 ciclos 
- Desplazamientos 4 ciclos
- Si queremos realizar operaciones con encadenamiento de cauce para 10 componentes


![[ej2.png]]