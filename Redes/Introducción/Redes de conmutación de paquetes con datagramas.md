En este esquema los paquetes contienen sobre el **destino** pero ***no*** sobre el ***camino de la subred que deben seguir***.

![[Pasted image 20230619161525.png]]

**Encamina los paquetes** por un camino u otro *dependiendo* de los **recursos disponibles**. 
**Decide el siguiente salto** para **cada paquete** en **cada nodo** por lo que el paquete en la **cabecera** tiene **dirección origen** y **dirección destino**.

Su información va notificando eventos (orientados por señalización ) y datos de control de la red.

Es posible que resulte fiable si los DTE constan de función de recuperación de errores y reorganización de información. Pero la velocidad < que la de los circuitos virtuales.

Utilizado para **Internet**

## Ventaja
- **Tolerancia a fallos**: si una red virtual falla tendrá que crearla otra vez. Pero si una red con datagrama falla **solo** tendrá que volver a **calcular** el **camino**. 
	- Ejemplo: en la imagen si falla el azul puede calcular el camino verde.

## Desventaja
- **No fiable** : es posible que el paquete llegue **desordenado** o **no llegue**
- **Poco control de la gestión**: porque no existen caminos preestablecidos.