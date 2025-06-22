### Ejemplo 

```
Como responsable del almacén // quien
quiero conocer cuándo se alcanza el stock mínimo // que
para poder realizar más órdenes de compra // para que
```

## Diferenciar las historias por su tamaño o complejidad

### Tema

^b9ee87

Requisitos a nivel organizacional
El requisito se puede **descomponer en diferentes historias**
que se pueden **resolver individualmente** 
*sin* que *afecte a las otras*

#### Ejemplo

```
Como jefe de departamente de administración 
quiero que se optimice el proceso de cálculo 
e impresión de nóminas 
para mejorar la experiencia de uso y la agilidad ante cambios
```

Se puede vivir en:
- Estudio de los indices de la BD para acelerar el proceso de calculo
- Modificar el proceso para obtener nominas 
- Modificar los formularios de lanzamientos

Cada un de esas historias en las que hemos dividido aporta diferente mejoras sin que tenga que finalizarse por poder verse afectado porque otra no se realizó.

Se posibilita la entra de forma parcial
incrementa la flexibilidad de horas de planificar el desarrollo de cada tarea
### EPIC
Requisitos a nivel de negocio o arquitectural
Formada por un conjunto de historias 
- que supone un flujo de trabajo completo para el usuario
	- Historia grande
La diferencia con [[#^b9ee87]] Tema, es que el valor de negocio de las historias **solo tiene sentido** si **se finalizan todas las historias**

#### Ejemplo 

```
Como administrador 
quiero todo el personal 
tenga el acceso a su nómina de forma digital
```

esto supone

- Como Administrador quiero que todos los empleados tengan un usuario para acceder al sistema de nóminas

- Como Usuario quiero poder configurar mi contraseña de mi perfil

- Como Administrador quiero que se envíe de forma automática un correo electrónico a cada empleado una vez la nómina está disponible

- Como Administrador quiero que se genere un archivo en formato pdf de cada nómina accesible y descargable por cada usuario.

todas están muy relacionadas, tenerlas todas implementadas es tener valor de negocio


### Historia 
Requisitos con valor para el cliente

Peticiones muy sencillas y claras 
que definen cuales van a ser los requisitos del proyecto

Preferible 
mayor numero de historias simples y
menor de historias más complejas


![[Pasted image 20250304203059.png]]

Los epic debería descomponerse en historias de usuario
Los epics siempre se hallan en la parte de
- menor prioridad
	- de la pila del producto (Product backlog)

No es necesario dedicar mucho tiempo a su descomposición al principio, sino más cerca del desarrollo o confirmación

Las historias pueden sufrir descomposicion adicional en forma de tareas.

Las historias ocupan 
- parte alta 
	- de la pila de producto
- serias candidatas a entrar en el sprint

Tareas finales se gestionan dentro del Sprint
