Cada valor lógico de la señal digital (uno o cero) se le asigna un nivel de tensión.
- Inconveniente: 
	- Difícil de interpretar la sincronización de la señal entre el emisor y receptor

Transmisión de una señal de pulso con información binaria

## Modalidades
- Codificación binaria sin retorno a cero (NRZ) -> el valor de tensión asociado a un nivel lógico se mantiene constante durante el tiempo que dura el bit
	- Unipolar -> al que más le afecta el ruido
		- ![[Pasted image 20230625190017.png]]
	- Bipolar -> le afecta menos que al unipolar
		- ![[Pasted image 20230625190121.png]]
	- sin retorno le afecta mas el ruido que con retorno. 

- Codificación binaria con retorno a cero (RZ) -> el valor de la tensión se mantiene constante solo la mitad del tiempo que dura el bit, tomando a cero la otra mitad 
	- Unipolar -> le afecta más el ruido que a la unipolar sin retorno 
		- ![[Pasted image 20230625190527.png]]
	- Bipolar -> a la que menos le afecta el ruido de todas
		- ![[Pasted image 20230625190558.png]]

## Orden en que le afecta el ruido de mayor a menor
- codificación binaria sin retorno unipolar 1º
- codificación binaria con retorno unipolar 2º
- codificación binaria sin retorno bipolar 3º
- codificación binaria con retorno bipolar 4º