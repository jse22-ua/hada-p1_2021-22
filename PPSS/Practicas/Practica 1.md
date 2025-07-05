
ciclo de vida o lifecycle 
- conjunto de fases
	- fase
		- conjunto de 0 a más goals (acciones)

una goal tiene que pertenecer a 1 plugin. Puede estar asociada a una fase y un plugin tiene 1 o varias goals 

Por ejemplo el plugin `compiler` tiene `compiler:testCompile` y `compiler:compile`

Todas las goals son configurables - cuentan con una variables (propiedades) por defecto que podemos cambiar. 
Como la fase a la que se asociará por ejemplo. 

Si la goal no tiene una fase por defecto, no se ejecutará aunque la incluyamos en el pom.xml

Cualquier proyecto debe tener el pom.xml en la raíz. 

El tipo de empaquetado asociado a un proyecto se indica a sus coordenadas. Dependiendo de este tipo de empaquetado, tiene ciertas goals asociadas 

cuando iniciamos el proceso de construcción se consulta primero el repositorio local `.m2/repository` para ver que se tienen los artefactos necesarios. 
Si no se descargan. Si borramos el `.m2/repository`  se volverá a crear cuando hagamos una nueva construcción del proyecto

Para crear un proyecto maven se puede usar `archetypes:` es como usar una plantilla con diferente configuración del pom. 
Por ejemplo usar la goal `archetype:generate o  del arquetipo maven-archetype-quickstart`

``` bash
mvn archetype:generate \
-DgroupId=<aqui_ponemos_el_valor_que_queramos> \
-DartifactId= <este_será_el_nombre_del_proyecto_generado>\
-DarchetypeArtifactId=maven-archetype-quickstart \
-DinteractiveMode=false
```


Propiedades que tienen todos los proyectos en común

```xml
<properties>
        <maven.compiler.source>21</maven.compiler.source>
        <maven.compiler.target>21</maven.compiler.target>
        <project.build.sourceEncoding> UTF-8 </project.build.sourceEncoding>
    </properties>
```


Para los test es necesario exportar dependencias de `junit` para poder correr los tests 

```xml
<dependencies>
        <dependency>
            <groupId>org.junit.jupiter</groupId>
            <artifactId>junit-jupiter</artifactId>
            <version>5.11.4</version>
            <scope>test</scope>
        </dependency>
    </dependencies>
```

asociadas a la fase test
## Ejercicio 1

## 1.1 ¿Cuál es el resultado de la construcción del proyecto y por qué da ese resultado?

Para compilar los fuentes del proyecto desde la ventana Maven nos vamos a lifecycle y marcamos compile. Entonces, presionamos el play en verde. 
Como resultado se obtiene un build success generando la carpeta target con los .`class`

No da ningún problema porque no compila los test que utilizan una librería no incluida. 

## 1.2 Observa las GOALS que se ejecutan. ¿Por qué no aparecen los plugins correspondientes en el fichero pom.xml de nuestro proyecto?

Maven tiene una serie de Goals asociadas por defecto a las fases de ciclo de vida por defecto. Estos los ejecuta automáticamente sin que estén indicado explícitamente el pom.xml. 
Si las dependencias no se encuentran en el repositorio local, Maven busca en ciertos repositorios remotos. Esta info se indica en el "super POM" (que heredan todos los proyectos de Maven)

La configuración que indicamos en el pom.xml + la configuración del super pom se llama "effective POM" 

##### ¿Cómo podemos sabe cuál es su configuración "efectiva", es decir la resultante de "combinar" la configuración que heredamos más la que nosotros hemos configurado?

Para ver la configuración explicita de la configuración "efectiva" o "real" del pom.xml. Hacemos
```bash
mvn help:effective-pom
```

que es lo mismo que se ve en la ventana de Maven de IntelliJ, en `Plugins`

## 1.3 También puedes comprobar que el plugin tiene dos goals, que hacen cosas diferentes y están asociadas a fases diferentes!! ¿Cuáles son esas goals?

- `compiler:compile`: Está asociado a la fase compilación (compile) y se usa para compilar los archivos fuente principales
- `compiler:testCompile`: Está asociado a la fase de compilación de pruebas (test-compile) y se utiliza para compilar los archivos fuente de prueba.

Compilamos los test usando la fase test en lifecycle de la ventana de maven. Da fallo en el goal `testCompile` porque falta la librería `JUnit`. No está indicado en el pom.


## 1.4 Finalmente familiarízate con las fases PACKAGE e INSTALL. Ejecútalas y anota:

### Package
- qué goals se ejecutan 
	- del plugin resources
		- resources
		- testResources
	- del plugin compiler 
		- testCompiler
	- del plugin surefire
		- test
	- jar (Package)
- qué hace, qué artefacto genera y dónde se genera durante la fase package
	- genera un archivo .jar con clases compiladas, recursos y dependencias configuradas. 
	- Lo guarda en el target

### Install

- qué goals se ejecutan 
	- del plugin resources
		- resources
		- testResources
	- del plugin compiler 
		- testCompiler
	- del plugin surefire
		- test
	- jar (Package)
	- install
- qué hace exactamente la fase install y dónde se copia exactamente en tu disco duro el artefacto correspondiente .
	- esta fase se encarga de copiar los jar generados en package al repositorio local de maven (.m2)

## 1.5 ¿Para qué nos puede servir que el empaquetado de nuestro proyecto esté almacenado en nuestro repositorio local Maven?

Si almacenamos el empaquetado de nuestro proyecto podemos usar dependencias de este proyecto o de otros proyectos sin tener que recompilarlo o descargarlo de repositorios remotos.

## ejercicio 3

#### Teniendo en cuenta que en clase hemos definido un comportamiento como una tupla con datos de entrada + resultado (tanto los datos de entrada como el resultado deben ser valores CONCRETOS), se pide:
- Indica tres comportamientos que pertenezcan al conjunto S
- Indica dos comportamientos que pertenezcan al conjunto P
-  Enumera el conjunto de comportamientos del conjunto T

Casos de prueba 

Sx pertenece al conjunto S
Px pertenece al conjunto P
Tx pertenece al conjunto T

| ID  | Dia | Mes | Año  | Expected |
| --- | --- | --- | ---- | -------- |
| S1  | 2   | 8   | 2020 | True     |
| S2  | 10  | 0   | 2002 | False    |
| S3  | 28  | 2   | 2014 | True     |
| P1  | 31  | 5   | 2020 | True     |
| P2  | 31  | 4   | 2022 | False    |
| T1  | 29  | 2   | 2020 | True     |


No se especifica que en los meses tienen que tienen que estar entre 1 y 12, ni que determinados meses tienen que estar entre 1 y el valor_maximo de ese mes. No obstante, la especificación dice que tiene que devolver falso si no es valida la fecha, así que, toda fecha incorrecta debería ser del conjunto S.

Automatizar

| ID  | Dia | Mes | Año  | Expected | Real  | Informe |
| --- | --- | --- | ---- | -------- | ----- | ------- |
| S1  | 2   | 8   | 2020 | True     | False | fail    |
| S2  | 10  | 0   | 2002 | False    | False | ✓       |
| S3  | 28  | 2   | 2014 | True     | True  | ✓       |
| P1  | 31  | 5   | 2020 | True     | True  | ✓       |
| P2  | 31  | 4   | 2022 | False    | False | ✓       |
| T1  | 29  | 2   | 2020 | True     | True  | ✓       |



EJERCICIO 3:

- Comportamientos que pertenezcen al conjunto S:
	(1)  28, 2, 2014  ->  True     
	(2) 10, 0 , 2002  -> False    
	(3)  2, 8 , 2020  -> True     


- Comportamientos que pertenezcen al conjunto P:	
    (1) 31,  5,  2020 -> True 
	(2) 31,  4 , 2022 -> False    

- Comportamientos que pertenezcen a T
   (1)  29, 2, 2020 -> True 
   (2) 
| ID  | Dia | Mes | Año  | Expected |
| --- | --- | --- | ---- | -------- |
| S1  | 2   | 8   | 2020 | True     |
| S2  | 10  | 0   | 2002 | False    |
| S3  | 28  | 2   | 2014 | True     |
| P1  | 31  | 5   | 2020 | True     |
| P2  | 31  | 4   | 2022 | False    |
| T1  | 29  | 2   | 2020 | True     |


El proceso de AUTOMATIZACIÓN de las pruebas es posterior al proceso de diseño y consiste en:
	(1) Implementar test en base a los casos de prueba
	(2) Ejecutar tests
	
| ID  | Dia | Mes | Año  | Expected | Real  | Informe |
| --- | --- | --- | ---- | -------- | ----- | ------- |
| S1  | 2   | 8   | 2020 | True     | False | fail    |
| S2  | 10  | 0   | 2002 | False    | False | ✓       |
| S3  | 28  | 2   | 2014 | True     | True  | ✓       |
| P1  | 31  | 5   | 2020 | True     | True  | ✓       |
| P2  | 31  | 4   | 2022 | False    | False | ✓       |
| T1  | 29  | 2   | 2020 | True     | True  | ✓       |



En el proyecto Maven simpleMavenProject,

el subproceso (1) de la automatización lo hemos realizado porque:
	Se han implementado los test en ejemploTest.java dentro de la carpeta test/java/ppss.P01 (tienen que pertenecer al mismo paquete o sino no funciona o toca exportar la clase Ejemplo)

el subproceso (2) de la automatización lo hemos realizado porque:
	Ejecutamos los test con la goal surefire:test que hemos configurado en SimpleProject_Run_tests

Observamos que hay un error en el segundo test de test.txt ya que la implementación no está correctamente implementada (Conjunto P), sólo se puede poner un comportamiento del conjunto `T`, ya que sólo se dispone de 1 test. Respecto al conjunto `P`, hay que tener en cuenta que las fechas con mes `8` tendrán un resultado distinto al esperado, ya que se ha implementado de forma incorrecta.