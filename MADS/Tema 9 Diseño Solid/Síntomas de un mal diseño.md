En un artículo *Design Principles and Design Pattern* de Robert C. Martin se mencionan los siguientes síntomas:
- Rigidez
	- tiene demasiadas dependencias claras 
	- Complicado introducir cambios 
		- sin introducir otros cambios en cascada
	- Hay que reescribir mucho después de un código para que compile correctamente
		-  Sin que el compilador se queje
- Fragilidad
	- demasiadas dependencias implícitas 
	- Un cambio no produce errores en el compilador 
	- Pero si bugs inesperados durante la ejecución
	- Se acumulan conforme añades más cambios
- Inmovilidad
	- cuando no se puede reutilizar código fácilmente
	- Las clases no son suficientemente genéricas
	- Cualquier cambio necesita añadir nueva clase y código
- Viscosidad
	- Cuando vas a hacer un cambio en un diseño puedes hacerlo
		- Con chapuzas (*hack*)
		- buenas técnicas
	- Tiene alta viscosidad cuando es más fácil hacer una chapuza que usar una buena técnica en un cambio.
		- Un diseño chapuzas da soluciones chapuzas 
		- Un diseño correcto da un cambio correcto

Si alguna de estas descripciones se aplica el equipo no querrá hacer cambios y arreglar cosas a no ser que sea crucial hacerlo. 
Se pierde la estimación de tiempo en una nueva funcionalidad. Porque el desarrollo es cada vez más lento.