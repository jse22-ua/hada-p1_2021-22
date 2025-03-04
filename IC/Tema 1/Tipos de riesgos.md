Riesgos estructurales o colisiones: 
	- Cuando dos instrucciones quieren acceder al mismo recurso 
	- Ejemplo 
	```
		1 [IF][ID][EX][M][WB]              
		2	  [IF][ID][EX][M][WB]
		3		  [IF][ID][EX][M][WB]
		4			  [IF][ID][EX][M][WB]

	si el 1 fuera ADD R1,R2, R3 en M no se utilizaría para nada entonces en el ID de 4 no sería un problema.  
	Pero si el 1 es LW R1,0(R2) podríamos tener un riesgo de estructura con el 4 porque estoy accediendo en memoria y leyendo cualquier estructura. Por ello tengo que hacer detencion (dt)
	
			1 [IF][ID][EX][M][WB]              Lw R1
			2	  [IF][ID][EX][M][WB]          Lw
			3		  [IF][ID][EX][M][WB]      Lw 
			4			  [dt][dt][dt][IF][ID][EX][M][WB]
	
	En el caso de que todas fueran carga (lw) entonces habría que realizar detencion tres veces porque sino el IF del 4 coincidiría con M de alguno de los anteriores
	
	Solución para no detener para cualquier riesgo estructural se hace replicando recursos. Si quiero acceder a un recurso que se está utilizando lo replico. 
	En lugar de tener una memoria en este caso, tengo dos memorias. Una memoria para lectura de instrucciones y otra para datos.

	```

- Riesgo de control 
	- condición de salto. Según el resultado, determina la secuencia de instrucciones que hay que procesar tras ellas.
	- ![[t1_riesgo_control.png]]
	- Soluciones
		- Abortar operaciones ![[t1_riesgo_control 1.png]] (son 3 instrucciones abortadas)
		- NOP o bloqueo![[t1_riesgo_control 2.png]]
		- Delayed branch![[t1_riesgo_control 3.png]]![[t1_riesgo_control 4.png]]
- Riesgo de datos 
	- Se produce por dependencias entre operandos o resultados
	-  Condición de carrera![[t1_condicion_carrera.png]]
	- Ejemplo 
	```
			1 [IF][ID][EX][M][WB]                 ADD R1, R2, R3        
			2	  [IF][ID][EX][M][WB]             SUB R3, R1, R2
			3		  [IF][ID][EX][M][WB]         ADD R4, R3, R1
			4			  [IF][ID][EX][M][WB]
	
	R1 se esta calculando en la linea 1 hasta WB que lo guarda pero se lee en ID en la linea 2. En R3 pasa lo mismo en la linea 2 y la linea 3. 
	Solución puede ser 
	- Detener la maquina hasta el WB
	- Reorganizar en el caso de que hubiera otras instrucciones que no dependieran de otra
	- Adelantamiento o fowarding consiste en adelantar los datos.
		- Por ejemplo en el ejemplo anterior se supone que leo el valor en ID pero realmente lo necesito despues de ID a la entrada de ejecucion de la linea 2(donde esta marcada la x) y el valor lo obtengo despues de la ejecución de EX (donde esta marcada la y) de la linea 1.
	
			1 [IF][ID][EX]y[M][WB]                 ADD R1, R2, R3        
			2	  [IF][ID]x[EX][M][WB]             SUB R3, R1, R2
			3		  [IF][ID][EX][M][WB]          ADD R4, R3, R1
			4			  [IF][ID][EX][M][WB]
	
	Quedandose finalmente como 
			1 [IF][ID][EX][M ][WB]                 ADD R1, R2, R3        
			2	  [IF][ID][dt][EX][M][WB]          SUB R3, R1, R2
			3		  [IF][ID][EX][M][WB]          ADD R4, R3, R1
			4			  [IF][ID][EX][M][WB]
	
	detenemos hasta el final de memoria donde guarda el valor de R1
	```

	- Soluciones ![[t1_riego_datos_1 3.png]]
		- Detención ![[t1_riego_datos_1 1.png]]
		- NOP![[t1_riego_datos_1 2.png]]
		- Reorganización![[t1_riego_datos_1 4.png]]
		- Adelantamiento o forwarding ![[t1_riego_datos_1 5.png]]
