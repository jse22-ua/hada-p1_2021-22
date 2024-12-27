Los circuitos virtuales utilizan **comunicación analógica** con el sistema telefónico de [[Redes de conmutación de circuitos]]. 
Los paquetes contienen información sobre que camino de la subred deben seguir y el destino.
En la transmisión origen-destino se establece un camino virtual que sea el mismo para los paquetes durante la comunicación. Después de liberarse la comunicación, si se produjera otra nueva el camino no tendría porque ser el mismo. 
Cuando establece conexión utiliza un #id_de_circuito_virtual en los routers para llevar un seguimiento de la conexión y garantizar que se envíe correctamente.

## Ventajas 
- El **ancho de banda** se aprovecha **mejor** -> está compartido para varias comunicaciones
- **Calidad** de comunicación **alta**
- **Bajo** índice de **errores** con transmisión secuencial de paquetes
- Pueden ser permanentes o no permanentes:
	- **Permanentes**: que se **crea** el  circuito virtual **cada vez** que se intenta intercambiar información
	- **No permanentes**: que se deja **creado siempre** ya que como hay **muchos paquetes** circulando **el coste temporal** sería mayor si se fuera creando cada vez que se intenta intercambiar datos.
- **Intercambio** de datos **fiable**
- **Control de los recursos disponibles** para una comunicación

## Desventaja 
Como es una red de conmutación de paquetes: 
- Tiene **mayor retardo** que la conmutación de circuitos
- Sufre **congestión** 
- **Sin tolerancia a fallos** porque se realiza **con conexión**. 
