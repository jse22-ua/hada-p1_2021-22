
## [[Diferencias entre cifradores]]


## [[Principios de cifradores en bloque]]

### [[Cifradores en bloque populares]]

### [[Esquema Feistel]]

## [[DES]]

## [[AES]]

## [[Modos de operación ]]

### [[Tiple DES]]

### [[ECB Libro electrónico de códigos]]

### [[CBC encadenamiento de bloque]]

### [[CFB Realimentación de cifrado]]

### [[OFB Realimentación de salida]]

### [[CTR Contador]]

### [[Otros modos de operación]]

#### [[AES-XTS]]

#### [[AES-GCM]]


## Cuestiones 

### ¿Qué cifrador en bloque elegirías en la actualidad, atendiendo a la seguridad y el rendimiento? ¿Con qué modo de operación?

AES porque tiene autenticación además de cifrado 
Robusto eficiente 
Sin debilidad en la práctica
Buen rendimiento 

Con modo de operación AES-GCM que proporciona confidencialidad, integridad, autentificación. Si el texto es alterado lo detecta
Permite paralelismo porque utiliza CTR, mejorando el rendimiento 

### ¿Hay situaciones en las que sería preferible un cifrador en bloque a uno en flujo o viceversa?

En bloque cuando es 
- cifrado de datos en descanso (almacenamiento)
- Mensajes de tamaño fijo o estructurado 
	- Firma digital, claves, algunos protocolos
- Procesamiento por lotes 
	- Cifrado masivo de registros
		- Especialmente paralelismo de GCM y CTR
- Cuando no se desea propagación de errores 
- Cifrado con autenticación 

En flujo cuando es 
- cifrado de datos en tiempo real 
- HW o recursos limitados
- Propagación de errores inaceptable 
- Cifrado de longitud variable 

