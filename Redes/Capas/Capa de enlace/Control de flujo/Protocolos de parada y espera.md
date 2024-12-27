El emisor debe esperar una confirmación (ACK) del receptor por cada bloque de datos enviado para continuar con la transmisión 
- Bajo aprovechamiento del medio físico
- El receptor puede producir saturación
- sencillo
- Necesita un medio 
	- Semidúplex 
	- buffers del receptor 

## Protocolos 

### protocolo unilateral de parada y espera. Canal sin errores

No se plantea el caso en el que se pierda el paquete o se envíe con errores. Así que, en caso de errores el receptor no volverá a recibir el paquete.

![[Pasted image 20230628175708.png]]


### Protocolo unilateral de parada y espera. Canal con errores

Los paquetes pueden perderse así que el emisor cuenta con un temporizador. Envía el paquete y inicia el temporizador y espera el ACK. Si el ACK no llega para cuando el temporizador se ha acabado el emisor volverá transmitir el mismo paquete.

Inconveniente, si el temporizador se acaba antes de que el receptor pueda enviar el ACK o se pierde el ACK. Enviará un paquete duplicado.

![[Pasted image 20230628180249.png]]

Si va con retardo genera un error en cadena. Porque el emisor envía el mensaje 0 y el temporizador se acaba, entonces el receptor le envía el ACK del mensaje 0, pero el mensaje 0 ya ha sido reenviado. El mensaje 0 duplicado es recibido por el receptor y el receptor envía ACK. Como el ACK del 0 fue después del duplicado el emisor envía un segundo mensaje creyendo que era el del duplicado. Dando lugar a tres ACK y 1 paquete duplicado.

Pérdida de sincronización

![[Pasted image 20230628180540.png]]

Para evitar que pase esto se realiza una enumeración de paquetes
![[Pasted image 20230628181120.png]]

No obstante, el inconveniente es que el receptor sabe que paquete tiene que recibir pero el emisor no sabe que paquete tiene que reenviar. Así que en el caso de que se pierda un mensaje, puede confundirlo con otro.

Para evitar esto se realiza un numeración de los paquetes de datos y numeración de asentimientos. 
![[Pasted image 20230628181610.png]]

## Inconveniente de solución final 
- Bajo rendimiento 
- Muchos retardos