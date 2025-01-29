Los servicios definen la lógica de negocio, mientras que los [[Controladores]] gestionan las peticiones llamando a estos servicios.

Los servicios se definen con la anotación  `@Service` que es una [[Inyección de dependencia en Spring]] 

## Ejemplo
```java
package demoapp.service; 
import org.springframework.stereotype.Service;

@Service
public class SaludoService {
	public String saluda(String nombre) {
	 return "Hola " + nombre; 
	 }
	}
```