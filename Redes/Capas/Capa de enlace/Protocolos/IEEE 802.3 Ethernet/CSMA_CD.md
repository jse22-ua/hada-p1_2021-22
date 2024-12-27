El medio se comprueba antes de que transmitir un paquete de datos 
Siempre semidúplex [[Transmisión de datos digitales#^4d6cba]]
## Problema 
Colisión por comprobación simultanea de bus por dos o más estaciones.

Se asegura que las dos estaciones que intentan transmitir simultáneamente detecten la colisión. 
Solución: Es necesario que la transmisión dure lo suficiente para llegar al otro extremo. (ranura Temporal)


## Algoritmo de Transmisión 
1º. Escucha del medio antes de transmitir
2º. Tiempo de espera de paquetes (96 microsegundo tiempos de bit)
3º. Transmisión del paquete escuchando
4º. La colisión se detecta cuando hay una tensión anómala (superposición de señales)
5º. Si una estación detecta una colisión la refuerza, transmitiendo una señal JAM (señal de congestión)
6º. El paquete que ha colisionado es reenviado hasta el 16 intento
7º En cada intento se espera un número aleatorio de veces (tiempo de ranura)
8º. El tiempo de ranura se determina como el doble del tiempo mínimo que tarda un bit en propagarse (51.2 micro segundos)

## Algoritmo de Recepción

1. El preámbulo permite sincronizar el receptor con el paquete a leer
2. La interpretación del campo dirección destino en el paquetes es inmediato
