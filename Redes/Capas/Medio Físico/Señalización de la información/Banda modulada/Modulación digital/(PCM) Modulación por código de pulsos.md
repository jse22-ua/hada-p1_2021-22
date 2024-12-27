La señal consiste en una secuencia de pulsos de misma amplitud y duración de pulso. Situados en determinados posiciones temporales.

La señal #modulada se genera a partir de la señal #analogica #moduladora  realizando un proceso de muestreo. 

La señal portadora es una señal de pulso con valor de amplitud fijo

Empleando el [[Teorema de Nyquist]] se obtiene fm = 1/Tm = 2B siendo B el [[Ancho de banda]] de la señal #portadora.
A cada instante se genera un pulso igual a la amplitud  de la señal analógica. Si embargo, dado a sistema digital es necesario cuantificar el valor de la amplitud. La amplitud solo podrá tomar un valor delimitado por q (N.º de niveles del conversor analógico-digital empleado). Cuando una amplitud no se corresponda a ninguno de los niveles se aproximará al mas cercano. Esto puede generar un **error de cuantificación** . 

![[Pasted image 20230626182109.png]]

La PAM es la señal #modulada que genera por amplitud de pulsos.

Después se se codifica cada uno de los niveles del conversor A/D. Esto se realiza empleando un código binario sencillo que precisa n bits, siendo q=2^n. 
![[Pasted image 20230626182628.png]]

Vmin = n/Tm = n · fm
fm máx.= 2 B
- el N.º de bits  máx. = 2Bmedio/2Bseñal

## Ventaja 
- Fácil de regenerar la señal original al estar codificada en simples pulsos 
- Posibilidad de realizar multiplexado varios canales de transmisión al mismo tiempo[[Multiplexión]]

## Inconveniente 
- La codificación PCM tiene muchos errores de cuantización 
- y errores por la limitación de N.º máx. de bits que pueden emplear modulación

## PCM diferencial 
La cuantificación diferencial se determina el valor inicial de la señal analógica y se codifican incrementos y decrementos. 

### ventaja
- Mayor velocidad de transmisión 
- se puede emplear en medios donde están limitado el N.º máx. de bits

#### Modulación Delta
La modulación delta es cuando los incrementos y decrementos tienen valores predeterminados fijos y codifican empleando un único bit. 
El incremento es un 1
El decremento es un 0
![[Pasted image 20230626193000.png]]

##### Ventajas 
- Menos información a transmitir 
- Menos ancho de banda 

##### Desventajas 
- imposibilidad de codificar señales constantes
- Si se produce un incremento mayor al preestablecido no se detecta
- falta de precisión 