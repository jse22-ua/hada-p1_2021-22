## Análisis de señales con series de Fourier

Una señal está compuesta por la suma de infinitas  funciones seno y coseno de frecuencias múltiplos de la frecuencia de la señal f(t) (suma de infinitos armónicos). 

Para aplicar Fourier -> señal continua o analógica y periódica (caso escaso: porque la transmisión entre DTE nunca es la misma y no tiene periodicidad) ^e8808a

![[Pasted image 20230624165905.png]]


Armonicos de orden n -> par de funciones coseno y seno de frecuencias nf0 y amplitudes an y bn

![[Pasted image 20230624170118.png]]

En la **transmisión de datos** el tipo de señales que aparecen generalmente son **señales analógicas**

#### Señales analógicas de pulsos
La **señales analógicas que codifica información binaria** es una **señal cuadrada** (bueno trapezoidal -> flancos de subida y de bajadas de los impulsos presentan un ángulo de casi 90 grados) donde el **0 es un voltaje** y el **1 otro distinto**

- Para cortas distancias y velocidades bajas. 
- con pequeñas #distorsiones -> [[Distorsión en el medio de transmisión]]

![[Pasted image 20230624170840.png]]
(señal analógica de pulsos )

#### Señal analógica periódica relacionado con transmisión secuencial de un carácter ASCII

Se dará por hecho que la transmisión de un octeto de bits (1 Byte) (Carácter ASCII) es continua -> 8 bits = 8 pulsos ([[Series de Fourier#^e8808a]])



![[Pasted image 20230624171947.png]]

ejemplo 'b' -> 98 en ASCII que en binario es 1100010 (se le añade un 0 porque tienen que ser 8 bits 01100010) que siendo T el tiempo total cada pulso tarda T/8 

#### Reconstrucción de la señal usando los 10 primeros armónicos

^1b7eb2

![[Pasted image 20230624175714.png]]

#### Espectro de potencia de una señal 
El espectro de potencia es valor medio de la contribución de cada armónico a la reconstrucción de una señal periódica.

la contribución es -> ![[Pasted image 20230624180226.png]]

Quedando esta representación del espectro de potencia del anterior ejemplo

![[Pasted image 20230624180320.png]]


Primeros armónicos 
- mayor importancia en reconstrucción de señal 
- Asociado a señales senoidales y cosenoidales de mayor amplitud
- mayor N.º de armónicos -> menor amplitud en la contribución -> menor efecto en la reconstrucción.