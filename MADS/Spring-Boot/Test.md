## Sobre la capa de servicios
Se puede obteniendo una instancia del servicio mediante [[Inyección de dependencia en Spring]]

### Ejemplo 
```java 
package demoapp; 

import demoapp.service.SaludoService; 
import org.junit.jupiter.api.Test; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.boot.test.context.SpringBootTest; 
import static org.assertj.core.api.Assertions.assertThat; 

@SpringBootTest 
public class ServiceTest { 
	@Autowired 
	SaludoService saludo; 
	
	@Test 
	public void contexLoads() throws Exception { 
		assertThat(saludo).isNotNull(); 
	} 
	
	@Test 
	public void serviceSaludo() throws Exception {
		 assertThat(saludo.saluda("Domingo")).isEqualTo("Hola Domingo"); 
	} 
}
```

## Sobre la capa web
Es posible hacer test sin lanzar realmente el servidor, ni ejecutar peticiones `HTTP`. 
Se obtiene por [[Inyección de dependencia en Spring]] un #mock de la clase `MockMvc` y usas el método `perform(get("/"))` o `perform(post("/saludoform").param("nombre", "Ester"))`.

El `get` debería devolver OK(200). 
Utilizando `andDo` y `andExpect` y el método `conteainsString`.

```java
package demoapp;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class MockMvcTest {

    @Autowired
    private MockMvc mockMvc;

    // Hacemos una petición GET a un end point y comprobamos que
    // el HTML resultante es correcto
    @Test
    public void shouldReturnDefaultMessage() throws Exception {
        this.mockMvc.perform(get("/"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Hello World")));
    }

    // Podemos hacer también una petición POST y pasar los datos
    // del formulario con el método .param
    @Test
    public void postShoudReturnCorrectResponse() throws Exception {
        this.mockMvc.perform(post("/saludoform")
                .param("nombre", "Ester"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Hola Ester")));
    }
}
```

## Del controlador y la plantilla

```java
package demoapp;

import demoapp.service.SaludoService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.containsString;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class MockServiceTest {

    @Autowired
    private MockMvc mockMvc;

    // Podemos también mockear el servicio
    @MockBean
    private SaludoService service;

    @Test
    public void greetingShouldReturnMessageFromService() throws Exception {

        // Y especificar lo que debe devolver una llamada a uno de sus métodos
        when(service.saluda("Ester")).thenReturn("Hola Mock Ester");

        this.mockMvc.perform(get("/saludo/Ester"))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("Hola Mock Ester")));
    }
}

```