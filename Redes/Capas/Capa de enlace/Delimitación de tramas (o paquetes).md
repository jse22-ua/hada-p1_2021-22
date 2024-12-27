El nivel de enlace define un formato para el paquete con una cabecera inicial y una cola en la parte final, además de los datos de la capa superior (datos del nivel de red). La cabecera indica información de control como numeración de paquete, destino, etc. 

En ocasiones los datos de nivel de red son demasiado grandes para incorporarlos todos en una sola trama ( #paquete) por lo que se #fragmenta 

En la cola se incorpora información para detectar errores y indica el final del paquete.

![[Pasted image 20230627194628.png]]

Dependiendo del tipo de delimitación se establecen distintas categorías de protocolos de nivel de enlace

## Delimitación temporal

En un principio la delimitación de tramas se diseño basado en la duración temporal de la trama sin emplear cabeceras.  Se estimaba el tiempo que tardaba el emisor en transmitir la trama y el receptor leería datos durante ese tiempo. 
- Sin éxito 
- El retardo provocaba muchos errores

## Delimitación por numeración de caracteres
Se indicaba el N.º de caracteres de la trama y se indicaban en la cabecera. 
- Muy sensible al ruido
- Si se produce un error al indicar la longitud se pierde la sincronización emisor - receptor y no se reconoce como correcta

## Delimitación por secuencias de caracteres especiales 
Algunos caracteres del código ASCII son especiales como: DLE, STX, ETX, ACK, NACK, SYN, etc.

DLE acompaña a estos caracteres especiales que han de ser interpretados.
La delimitación del paquete se realiza empleando DLE STX al principio y DLE ETX al final del mismo. Esto sirve cuando los datos son caracteres de texto pero cuando es información de tipo binario surgen problemas. 
Cuando ocurre esto se realiza un relleno de caracteres 
- Consiste en incorporar secuencias de bits correspondientes al carácter DLE delante de la secuencia de bits del carácter DLE 

## Delimitación por secuencias de bits especiales
Soluciona los problemas de la delimitación por caracteres especiales. Se emplea un solo bit 
- Reduce la información innecesaria
- Aprovecha el [[Ancho de banda]]

## Delimitación por violaciones de la codificación de capa física 

Se emplea con varios esquemas de [[Señalización en banda base]] y [[Señalización en banda modulada]].
Una de ellas es la [[Codificación Manchester]] donde cada bit lógico esta asociado a un tipo de transición en la señal.

Consiste en enviar al inicio de la trama una secuencia de la señal que no está asociada a información interpretable.