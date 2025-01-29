Spring Boot simplifica la declaración y validación de formularios usando clases java que trabajan como modelos del formulario.

## Ejemplo 

Clase UserData

```java
package demoapp.controller;

import javax.validation.constraints.Size;

public class UserData {
	@Size(min=3, max=30) 
	String nombre;
	
	public void setNombre(String nombre) { 
		this.nombre = nombre; 
	}
	
	public String getNombre() {
	 return nombre;
	}
}
```

La validación de nombre en este caso se hace con `@Size` que comprueba el tamaño mínimo y máximo.

Otros atributos pueden ser [Atributos](https://www.baeldung.com/java-validation)


Y con una plantilla Thymeleaf se declara un objeto que tiene el mismo nombre que la clase modelo `UserData` 

```html
<!DOCTYPE HTML> 
<html xmlns:th="http://www.thymeleaf.org">
<body>
<form th:action="@{/saludoform}" th:object="${userData}" method="post">
	<table>
		<tr> 
			<td>Nombre:</td>
			<td><input type="text" th:field="*{nombre}" /></td> 
			<td th:if="${#fields.hasErrors('nombre')}" th:errors="*{nombre}"></td>
		</tr> 
		<tr>
			<td><button type="submit">Enviar</button></td> 
		</tr>
	</table> 
</form> 
</body> 
</html>
```

Se define la petición `Post` a la URL `/saludoform`

El controlador recibe la petición `POST` 

```java
package demoapp.controller;

import demoapp.service.SaludoService;
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; 
import org.springframework.validation.BindingResult; 
import org.springframework.web.bind.annotation.*; 
import javax.validation.Valid; 

@Controller 
public class SaludoControllerForm { 
	@Autowired 
	private SaludoService service; 
	
	@GetMapping("/saludoform") 
	// Hay que declarar un parámetro con el tipo usado en el modelo del formulario (UserData) 
	public String saludoForm(UserData userData) {
		 return "formRegistro"; 
	} 
	
	@PostMapping("/saludoform") 
	public String checkPersonInfo(@ModelAttribute @Valid UserData userData, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "formRegistro"; 
		} 
		model.addAttribute("mensaje", service.saluda(userData.getNombre())); 
		return "saludo"; 
	} 
}
```

`@ModelAttribute` y `@Valid` indican el objeto recogido en el formulario sobre el que se ha realizado la validación.

Si se detecta un error se usa el método `bindingResult.hasError()` que se pasa también como parámetro