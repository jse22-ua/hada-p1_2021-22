## ¿Qué es?

En caso de que los usuarios que reporten fallos sean muchos, se automatiza con una herramienta de gestión y seguimiento de errores #LBT (Local Bug Tracker) o #Bugtracking

 Sino los avisos de los usuarios podrían no ser atendidos por
- ser ignorados 
- ser perdidos

El #Bugtracking ayuda a los programadores a llevar un registro de 
- los fallos
- Mejoras 
- añadidos nuevos ( #wishlist)

Un componente importante es la Base de datos, donde se guardan la información relacionada con un fallo. 
Guarda datos como:
- La gravedad del fallo
- Como reproducirlo
- Que usuario lo ha detectado / porque piensa que es un fallo
- Programadores que interviene 
- El estado actual

Algunos #Bugtracking pueden trabajar con el control de versiones

#### Resumen 

![[t3_bugtraking.png]]

## Tipos de errores
[[Tipos de errores]]

![[t3_tipos_de_errores.png]]

## Aplicaciones de Bugtracking
- Para almacenar los avisos de los usuarios. 
- Para saber cuales son avisos reales y cuales no.
- Para saber cual es el estado del tratamiento de cada error real.
- Saber como están respondiendo los programadores a esos avisos de error
	- Un programador puede responder #WONTFIX 
		- cuando se indica que no se solucionará
![[t3_aplicacion_bug.png]]

### Algunas aplicaciones de Bugtracking
#### Bugzilla
Original de Mozilla
Se emplea para:
- Linux
- Kernel
- Gnome
- …

#### Trac
Contiene muchos usuario
Lo utiliza en el SO -> #Haiku 
- Proyecto abierto de BeOS


#### Redmine 
Igual que las anteriores pero con muchos usuario

#### Jira
Igual que las anteriores


## Repositorio de código 

Muchos de los proyectos usan cosas como GitHub, GitLab, etc. 
Es estúpido separar gestión de bugs de gestión de código. 
Por lo que servicios como GitHub y GitLab incluyen gestión de bugs (issues) en su flujo de trabajo.


![[t3_end.png]]