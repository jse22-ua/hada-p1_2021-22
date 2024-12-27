La amplitud de la señal #portadora se modifica en función de la señal #digital #moduladora. 
Una modulación en amplitud sencilla es tomar la señal senoidal ( la #portadora) como amplitud A y tomar el valor A durante el tiempo que dura el bit 1 y tomar valor 0 de amplitud durante el tiempo que dura un bit 0.

![[Pasted image 20230626162509.png]]

## Espectro de potencia de la señal moduladora y modulada
![[Pasted image 20230626162809.png]]

La modulación produce un desplazamiento en la frecuencia del espectro de la señal #moduladora igual a la frecuencia de la señal #portadora. Esto produce que se envíe el espectro de la moduladora por duplicado (**bandas laterales**).
Por tanto, el [[Ancho de banda]] es el **doble** en la señal #modulada que en la señal #moduladora. 

Ambas poseen la misma información por lo que es posible eliminar una de las dos bandas y la componente de la portadora usando un filtro de pasa-alta -> transmisión en banda lateral única.

## Inconveniente de eliminar una banda
- la potencia se reduce mucho -> muchos errores de transmisión
- Antes -> atenuación -> susceptible a errores

## Ventaja 
- Mayor aprovechamiento del ancho de banda
- La otra banda se puede utilizar como transmisión de información adicional.
- Ahora -> mayor fiabilidad
- Velocidad de transmisión == velocidad de modulación o señalización
