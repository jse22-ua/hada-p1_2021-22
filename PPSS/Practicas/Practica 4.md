
Para diseñar los casos de prueba a partir del método de diseño de *particiones equivalentes*, tener en cuenta:

- Cada entrada y salida
	- identificada con letras mayúscula
	- Entrada 1 (A) edad
- Agrupaciones de las entradas, si procede 
	- Entrada 2 + 3 (B) : fecha+listaFacturas
	- Debes dejar claro que están agrupados
- Particiones validas y no válidas
	- Etiquetadas cada una de las salidas/entradas/agrupaciones
	- Para las particiones no válidas usa el prefijo N
		- NA1
		- NA2
		- Si A es la valida
- Combinaciones de particiones
	- ejercitadas por cada caso de prueba
- Valores concretos
	- para entradas y salidas en la tabla de casos de prueba

Tambien es importante recordar

- indicar las asunciones sobre los datos de entrada (de los casos que sean necesarios)
- Los valores tienen que ser concretos siempre en la tabla
- no debes asumir nunca un resultado esperado 
	- que no esté indicado en la especificación
	- En su caso usar ?
- Cuando apliques la heurística (Clases de equivalencia) 
	- Tener en cuenta que vamos a implementarlo con java
	- cualquier tipo no primitivo puede tomar valor null
		- enum
		- array
		- String
		- ...


## Ejercicio 1

Entradas:
- Entrada 1 (T) tipoCoche 
	- clase válidas
		- T1: (tipoCoche = Turismo)
		- T2: (tipoCoche = Deportivo)
	- Clase invalida 
		- NT1: Null
- Entrada 2 (F) fecha_inicio (f)
	- clase válida
		- F1 fecha_inicio >= actual
	- clase inválida 
		- NF1 fecha_inicio < actual
- Entrada 3 (D) número de días (n)
	- Clase válida
		- D1 (0<n<=30)
	- Clases invalidas
		- ND1 (n>30)
		- ND2 (n<=0)
- Entrada 4 (I) disponibilidad (d)
	- Clase válida
		- I1 d = true
	- Clase inválida:
		- NI1 d = false

Salida (S): importe (s)
- Clase valida
	- S1 s = 100* ndias 
		- si (ndias={1,2})
	- S2 s = 50 * ndias
- Clase inválida 
	- NS1 Reserva Exception ("Fecha no correcta" )
	- NS2 ReservaException ("Reserva no posible")
	- NS3 ??? (Cuando numero de dias es < 1)
	- NS4 ??? Tipo de coche null



## Ejercicio 2

método generaeventos() 

devuelve
- lista de eventos de calendario para las sesiones de clase de una asignatura (1 clase por semana)
	- `List<EventoCalendario>`
- Una Excepcion - ParseException

Reglas
- ni el nombre ni las fechas serán null (las fechas viene ya validada) 
	- devuelve ???
- Si la hora de inicio tiene formato o valores incorrectos o el día de la semana no es uno de los valores válidos 
	- Devuelve ParseException
- Devolver lista vacía si
	- La fecha de inicio es posterior a la de fin
	- Si el día de la semana no está incluido en el rango de fechas del curso 
		- Por ejemplo, Si se imparte un martes la clase y la fecha inicio cae miércoles (22/02/23) y la fin viernes (24/02/23) . Devolvería vacía porque no se incluye el martes en ese rango
- Si la hora de inicio de la clase es null 
	- Se considera un evento de todo el dia y la duración será -1 
- Sino la duración será 120


Entrada:

Entrada 1 (A): asignatura (a)
- clase valida
	- A1: cualquier cadena de caracteres

Entrada 2+ 3 + 5(IF) fechaInicioCurso(finc) + fechaFinCurso(ffin) + dia semana(dsem):
- clases válidas
	- IF1 finc <= ffin 
	- IF2 finc > ffin
	- IF3 entre finc y ffin contiene dia de la semana
- Clases inválidas 
	- NIF1: dsem <> {1,2,3,4,5,6}

Entrada 4 (H) horaInicio (h):
- clases válidas
	- H1: h tiene formato "[0-1][0-9]:[0-5][0-9]"
	- H2: h = NULL
- Clases inválidas:
	- NH1: h no tiene formato "[0-1][0-9]:[0-5][0-9]"


Salidas (S) lista de eventos (s):
- Clases validas
	- S1: {eventoCalendario(nombreAsig = a, fechaDeSesión=fecha que caiga el dia de la semana despues de fecha inicio curso, horaInicio=horaInicio, duracion = 120),... hasta que se acaben llegue a fecha fin de curso}
	- S2: {}
	- S3: {eventoCalendario(nombreAsig = a, fechaDeSesión=fecha que caiga el dia de la semana despues de fecha inicio curso, horaInicio=null, duracion = -1),... hasta que se acaben llegue a fecha fin de curso}
- clases inválida
	- NS1: ParseException



## Ejercicio 3 

`void agregarGrabacion(ArrayList<Grabacion> grabaciones, Grabacion p) throws GrabacionException`

Grabación contiene atributos enteros:
- canal (nº de canal de grabación)
	- del 1 al 20
	- Solo pueden grabar en un canal disponible (las grabaciones no deben solaparse)
- inicio (minuto inicial)
	- valores entre 1 y 1440
- fin (minuto final)
	- valores entre 1 y 1440

La lista de grabaciones nunca se solapan entre ellos, en todo momento está ordenador por valores de inicio de cada elemento de la lista

Solo se aceptará Grabaciones de al menos un minuto (inicio < fin)

Lista de grabaciones nunca a null

Se añade a la lista sólo si no solapa con ninguna otra ya existente en la lista,
- se añadirá a la posicion correpondiente para que mantenga ordenada

Si se quiere añadir una lista que solapa lanzar GrabacionException con mensaje "Solape de grabaciones", 

Si el canal indicado no existe lanzará GrabacionException con el mensaje "No existe el canal", si el intervalo de grabación a añadir tienen una duracion 0 GrabacionException con el mensaje "Error intervalo de grabación"


Entradas

Entrada 1 (L) lista de grabaciones (l):
- Clase válida
	- L1: lista con grabaciones inicio vacía
	- L2: lista con grabaciones ordenadas por valor de inicio
- Clase inválida:
	- NL1: contiene un canal a añadir

Entrada 2 (C) canal (c):
- Clase válida
	- C1: 1 <= c <= 20 
- Clase inválida
	- NC1: c < 1
	- NC2: c > 20

Entrada 3 + 4 (IF) inicio + fin (i+f):
- Clase válida
	- IF1:  f - i> 0
- Clase inválida
	- NIF1:  f - i = 0
	- NIF2:  f - i < 0

Salida 1(S) lista de grabaciones resultante (s):
- Clases válidas:
	-  S1: Lista con grabación añadida
- Clases inválidas
	- NS1:  GrabacionException("Solape de grabaciones")
	- NS2: GrabacionException("No existe canal")
	- NS3: GrabacionException("Error en intervalo de grabación")
	- NS4: ???