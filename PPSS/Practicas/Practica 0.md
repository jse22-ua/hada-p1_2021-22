
al ejecutar `mvn compile`
- `mvn` - comando que ejecuta Maven 
	- Siempre se debe ejecutar donde está el fichero pom.xml 
- `compile` - representa la fase de un ciclo de vida Maven 

Las acciones se muestran en pantalla con --- delante de cada una 

`tree` se utiliza para ver el esquema de la carpeta 

Acciones de compile:
- resources : resources
- compiler : compile

Acciones de clean:
- clean : clean

Acciones de test:
- resources : resources
- compiler : compile
- resources: testResources
- compiler : testCompile
- surefire : test

test compila antes de ejecutar los test los ejecutables (compile) y los test (testCompile). Mientras que compile solo compila los ejecutables.

Si falla la compilación de los ejecutables en mvn test se para la en la accion compile y no sigue con el resto de goals. 