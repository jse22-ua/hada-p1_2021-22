
## Lenguajes de programación más comunes

- HTML
- CSS
- Javascript
- php 
- java, jsp
- ASP.net
- Python 
- Sql

## Estructura 

![[Pasted image 20250326103340.png]]

### Estático

Ideal ==si no se actualiza mucho ==
==Más seguro== 


### Dinámico 

Diseño y contenido separado
Más ==sencillo de mantener==
==Modificaciones más sencillas y rápidas==

### Creación desde cero

Más flexibilidad, sin limites
Complicada y lleva mucho tiempo


### Framework y CMS

Ofrece una base y agiliza la creación del sitio
Siempre funciona igual (fácil de encontrar ayuda)
Curva de aprendizaje grande  (a veces)

## Frameworks más conocidos

- Bootstrap 
- Semantic UI
- Angular JS
- React 
- Vue 
- Laravel 
- Slim Framework

## Plantillas HTML5

Contenido y diseño ==juntos==
Debemos crear el fichero HTML
Completamente estático

## Generador de sitios estáticos

Contenido y diseño ==separado==
Generan fichero HTML
No se considera CMS
Más fáciles de mantener, completamente estáticos 

Ejemplo : HUGO, jekyll


## CMS

Content Manage System
Sirve de ayuda para la creación del sitio web
[[Estructura]]
Contenido 
Usuarios y permisos

Ejemplo: Wordpress,Moodle, phpBB...


### Wordpress

CMS
codigo abierto
Arquitectura de plug in
- Los plugins son un conjunto de ficheros que añaden funcionalidades que Wordpress de base no ofrece
	- se intalan en un wordpress
	- existen miles de plugins
plantillas 
desarrollado en php
utiliza mysql

Los temas son un conjunto de archivos que configuran la estructura y aspectos de la páginas del sitio
- Se intalan en wordpress ya existentes
- pueden cambiar la estructura de la web 
- pueden añadir nuevas funcionalidades (Plugins)
Al cambiar un tema no cambia el contenido solo la forma de mostrarlo

43% de internet hecho con wordpress
Fue desarrollado para crear blogs (weblog (abreviatura))
Lista de entradas en orden cronológico (tipo diario)


Los widges son bloques de contenido que se pueden añadir
- No se instalan por separado (vienen incluido en los temas y en los plugins)
- El lugar donde se puede colocar lo define el tema activo
- pueden ser independientes del tema activo

Roles que pueden haber:
- Administrador - con acceso a todo
	- Panel 
		- Entradas crea y gestiona las entradas del blog
		- Medios crea y gestiona contenido multimedia
		- Página crea y gestiona pagina del sitio 
		- Comentarios gestiona los comentarios de los usuarios
		- Apariencia gestiona la apariencia y la estructura del sitio
		- Plugins Instalar gestiona y actualizar plugins
		- Usuarios añade y gestiona los usuarios que tienen acceso al sitio
		- Herramientas - otras herramientas 
			- exportar datos, importar
		- Ajustes - Configuración general del sitio 
		
- Editor - crea gestiona y publica
- Autor - crea gestiona y publica sus propios articulos
- Contribuidor - como el autor pero sus articulos deben ser aprobador
- Suscriptor  - puede leer y comentar pero no añadir

Creacion con wordpress.com
- No necesitas instalar 
- personalizacion limitada

Creación con wordpress.org
- configurar base de datos
- copiar ficheros en el servidor
- instalar wordpress 
- personalización total

![[Pasted image 20250326113328.png]]