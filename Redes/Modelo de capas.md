La arquitectura se define por una serie de #capas o niveles que reaccionan entre sí.  Esto facilita el **diseño** de la red y la **gestión de fallos**.

**Cada capa** tiene que proporcionar un conjunto de **servicios** a la **capa superior**. 
![[Pasted image 20230620115300.png]]

La capa n **intercambia información** con la capa n del otro **extremo** empleando #protocolos.
La capa n de un extremo y la capa n de otro se denominan **entidades pares** y tienen una comunicación **horizontal** que es **virtual**. 

La comunicación **real** es la comunicación **vertical**. **Envía información de datos** y control de **capas superiores** a las **inferiores**. 
Cuando llega al **nivel físico** donde la información digital se transmite por el medio físico. En el host ( estación o máquina ) del otro **extremo** hace el **proceso inverso** (de la **capa inferior** a la **superior**)

La **interfaz** de capa (**conjunto de normas** ) se encarga **definir** las **operaciones y servicios** y realizar comunicación entre las **capas adyacentes**.

## Ejemplo

![[Pasted image 20230620164549.png]]

El máquina origen ( #host origen) manda el mensaje M al usuario remoto que se encuentra en la máquina destino ( #host destino). El nivel 4 interacciona con el usuario leyendo el mensaje que será transmitido empleando el protocolo del nivel 4. Se le añade al mensaje la cabecera de información C4. Se pasa al nivel inferior c4+M (esto será lo que llegue al nivel 4 del #host destino.

En el nivel 3, se fragmenta en trozos para evitar el retardo por errores en C4+M1 y M2. A cada fragmento se le añade su cabecera C3.1 y C3.2. Ambos paquetes se envían al nivel inferior. Se le añade la cabecera ya que no precisa de fragmentación. Al llegar al nivel 1 ( #medio_físico  ) transmite el mensaje codificado en señales adecuadas.

Al llegar a otro #host se retira la cabecera del respectivo nivel y se reagrupan los paquetes hasta llegar al mensaje original.

## Modelo actual 

El modelo de capas usado hoy en día es el [[Modelo de capas de TCP_IP]] o ( #Internet)
