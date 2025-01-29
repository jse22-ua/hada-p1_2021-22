Es conveniente tener diferentes tipos de error predefinido. 
Debian trae:

- Important 
	- Fallo con efecto importante en la usabilidad de un paquete
	- sin hacerle completamente inútil a todo el mundo
- Normal 
	- Aplicable a la mayoría de fallos
- Minor 
	- No afecta a la utilidad del paquete
	- Trivial de arreglar
- #wishlist 
	- Petición de alguna característica
	- Fallos muy difíciles de arreglar por su diseño

En el #BTS (Bug Tracking System) de Debian: 
- Critical
	- El sistema entero o SW no relacionado entre si
	- Hace que es SW falle y cause pérdidas de datos 
	- Introduce un agujero de seguridad en el sistema donde se instale este paquete
- Grave
	- Hace que el paquete no se pueda utilizar 
	- puede causar perdida datos
	- introducir un agujero en la seguridad
- Serious 
	- Severa violación de la política de Debian 
		- Violación directa (Must)
		- Violación requerida (Required)
	- Hace que el paquete no se pueda publicar