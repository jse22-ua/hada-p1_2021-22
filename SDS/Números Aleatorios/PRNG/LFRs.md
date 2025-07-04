NLFSR -> registro de desplazamiento no lineal
LFSR -> registro de desplazamiento lineal


S(i) semilla de cada celda i (valor: 0-1)
a(i) es el contenido de la cerda i


su función de retroalimentación es lineal (XOR de bits)

Modelización sencilla 
Implementación en HW sencilla
genera secuencias con un periodo max 2^n

Requisitos 
- Período 
- Distribución estadística 
- Facilidad de implementación 


Falla en la impredecibilidad
Complejidad lineal 
puede predecirse la secuencia después de 2n bits

Se suelen modificar 
para hacerlos seguros
- Filtrado no lineal 
- Combinación no lineal 