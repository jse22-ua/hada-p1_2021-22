Cuando un paquete de broadcast es enviado por una estación. 
Los bucles provocan una circulación infinita de paquetes de #broadcast y cambios continuos de la tabla de reenvío en el proceso de aprendizaje.

![[Pasted image 20230630090258.png]]

Para solucionar este problema se define el [[Algoritmo de árbol de expansión (Algoritmo Spanning Tree)]] que define un protocolo de comunicación entre puentes que consigue una estructura sin necesidad de bucles 
- `Definido en Norma IEEE 802.1D MAC Bridge`

En caso de tener bucles tiene tolerancia a fallos

## Proceso 

- El algoritmo elige un puente con id más bajo (puente raíz)
- Cada puente tiene un coste RPC (N.º de redes intermedias y [[Velocidad de transmisión]]) desde el puerto raíz
	El que menor coste tiene es el puerto raíz.
- Cada segmento elige un puerto designado (con < RPC)
- Finalmente se activan todos los puertos raíz y designados determinando la estructura árbol 
- Mientras todos los puertos raíz y puertos designados funcionan correctamente se mantiene la estructura.
- El puente raíz envía mensajes de control cada x tiempo 
- Si un puente deja de recibir mensajes de puente raíz, se realizará de nuevo puertos raíz y designados.

![[Pasted image 20230630090633.png]]

