En Spring Boot se utiliza `@Controller` para definir un controlador. Los controladores se definen para ejecutar peticiones HTTP.

Usando `@RequestMapping` o `@GetMapping` o `@PostMapping`  definimos la URL para la petición. 

La anotación `@ResponseBody` construye automáticamente esta respuesta.

## Ejemplo 
```java
package demoapp.controller; 

import demoapp.service.SaludoService; 
import org.springframework.beans.factory.annotation.Autowired; import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.PathVariable; import org.springframework.web.bind.annotation.RequestMapping; import org.springframework.web.bind.annotation.ResponseBody; 

@Controller
public class SaludoController { 

	@Autowired
	private SaludoService service;

	@RequestMapping("/saludo/{nombre}") 
		public @ResponseBody String saludo(@PathVariable(value="nombre") String nombre) { return service.saluda(nombre); } }
```