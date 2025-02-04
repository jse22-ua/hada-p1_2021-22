
## Supuesto 1 (año pasado)

Enunciado: [[Supuesto1.pdf]]

Distributed Systems SL y el proyecto Super Sneakers

Plataforma de comercio electrónico para comprar zapatillas deportivas. 

Capaz de soportar funcionalidades básicas 
- pagos
- marketing
- envío de productos
- aplicación web y móvil que permitan interactuar con los servicios solicitados

Características y requisitos funcionales
- Registro de una cuenta única 
- Inicio de sesión centralizado
- Añadir artículos a la cesta
- Edición de artículos de la cesta
- Eliminación de artículos del catálogo
- Filtrar artículos por tipo 
- Filtrar artículo por marca
- Obtener información de marketing personalizada

No funcionales
- Disponibilidad y escalarse automáticamente
	- Aumento y disminución del tráfico
- Proceso de desarrollo ágil
- Aplicación web debe admitir clientes móviles que ejecuten diferentes tipos de sistemas operativos
- Debe admitir hospedaje y multiplataforma 
- Acceso de usuarios centralizado 
- Los servicios de gestión de identidades, de catálogo de productos, de pedidos y ser fácilmente reutilizables para futuras tiendas en línea que el cliente desea crear en un futuro 
- Debe incluir una herramienta de marketing que muestre a los usuarios información de productos que puedan ser de su interés. Fácilmente reutilizable.
- Todos los servicios deben comunicarse entre ellos utilizando una mecanismos de comunicación asíncrona
- Los desarrolladores deben disponer de un portal de administración con acceso *super admin* a todos los servicios.
- Los logs generados por todos los servicios deben estar centralizados y se deben poder acceder a ellos desde el portal de administración

![[supuesto.png]]


## Supuesto 2

Enunciado: [[Supuesto02.pdf]]

![[supuesto2.png]]

## Resolución del supuesto 10

![[Pasted image 20241015101434.png]]

se le pone un cdn porque hay una gran cantidad de middleware. Eso hace que haya una baja latencia. Pero esto se soluciona añadiendo caches, esto se puede hacer con el CDN.
