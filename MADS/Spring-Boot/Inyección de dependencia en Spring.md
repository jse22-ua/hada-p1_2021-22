
La inyección de dependencias permite que el código sea más flexible y fácil de testear. Permitiendo definir [[Test]].

## Singleton 

Por defecto todas las anotaciones son Singleton (`@service, @controller, @component`, etc.). Esto hace que un controlador reciba múltiples peticiones concurrentemente.

Por lo que múltiples hilos podrán ejecutar el mismo código del controlador. Por ello es importante **No definir variables de instancia mutables** dentro del controlador. Esto dara errores.

## `@Autowired`
Se utiliza para inyectar variables de un objeto nuevo del tipo indicado

## `@Service`
Se utiliza para definir un servicio, esto se ve en [[Servicios]]

