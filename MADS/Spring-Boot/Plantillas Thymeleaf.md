Son páginas HTML que introducen objetos Jaba pasados por los [[Controladores]]. 
Este devuelve el nombre de la plantilla y pasa a la plantilla los objetos a mostrar usando un diccionario (`model`)

## Ejemplo 

```html
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
	<h1 th:text="'Saludo: ' + ${mensaje}"> </h1>
</html>
```

```java
package demoapp.controller;
import demoapp.service.SaludoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SaludoControllerPlantilla {
	@Autowired 
	private SaludoService service;
	
	@RequestMapping("/saludoplantilla/{nombre}") 
	public String saludo(@PathVariable(value="nombre") String nombre, Model model) 
	{ 
		// Se añade la respuesta a la clave 'mensaje' que se usa 
		// en la plantilla
		model.addAttribute("mensaje", service.saluda(nombre)); 
		// Se llama a la plantilla 'saludo.html' 
		return "saludo"; 
	} 
}
```