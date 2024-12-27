## Velocidad de modulación (vm) (baudio bd)
La velocidad de modulación de una señal digital de pulsos mide el N.º de veces por unidad de tiempo que la magnitud física (voltaje, intensidad lumínica, amplitud, etc. ) varia. 

![[Pasted image 20230624190658.png]]

## Velocidad de transmisión (vt) (bps o Bps)

La velocidad de transmisión N.º de bits transmitidos por un medio por unidad de tiempo. 

### Relación entre Velocidad de transmisión y velocidad de modulación 

Si conoces el N.º de niveles (n)  que una señal codifica:
 - Vt = Vm · log2(n) 

Si conoces el N.º de bits (b) que una señal codifica:
- Vt = Vm · b

#### Ejemplo: 
![[Pasted image 20230624191407.png]]

- Vm = 1/0.1 
- N.º niveles = 4
	-  Vt = Vm · log2(4) = 1/0,1 · 2 = 20 bps

- N.º bits = 12 
	- Vt = 12/0.6 = 20 bps

### Relación entre [[Ancho de banda]] y Velocidad de transmisión y N.º de Armónicos transmitidos sin atenuaciones

Si se dispone de un medio físico con ancho de banda B, siendo n el N.º de armónicos de una señal y f0 la frecuencia fundamental de la señal:
- n · f0 <= B
- si f0 = Vt/8 -> n · Vt/8 <= B

Si la velocidad de transmisión aumenta, el N.º armónicos disminuye
- Esto implica que la señal se degrada produciéndose errores en la transmisión.

Si la velocidad disminuye, el N.º de armónicos aumenta
- La reconstrucción de la señal es mejor