Ejercicio 1 
d) 
- solo se ha generado un informe porque se ha indicado con el -DskipITs=true que solo generara informes para los test unitarios y los de integracion que los excluya

- 117 - 84 (no ejecutadas) = 33 instrucciones bytecode
- 84 instrucciones
- 117 instrucciones
- Porque llama al constructor por defecto
- porque el constructor no tiene sentencias if, ni switches ni bucles 
- porque la complejidad ciclomática la calcula jacoco como 
	- CC = N.ºBranch - Decisiones + 1 
	- como hay 2 ifs y un for son 3 decisiones y como cada uno tiene dos ramas cada uno son 6 ramas 
		- CC = 6 - 3 + 1 = 4
-  La complejidad ciclomática calculado por jacoco. Es 4 como se ha calculado anteriormente. Y según el missed no falta ningun test más. Si está siendo eficiente, pero la cobertura de caminos no cubre la cobertura multiniveles
- Porque es el informe de las pruebas unitarias no de integridad, por lo que se hace un stub para evitar pasar por esa linea

E) 67%, necesitamos 6 test más para cubrir las ramas por las que no se han pasado y todas las decisiones

F) Porque los test solo llaman a max value y max value solo llama a Isvalid como mucho. Porque hay ramas y decisiones que no se plantean en is valid


## Ejercicio 2

A) 
- Porque no tiene condiciones ni decisiones, ningún if, for, switch en ninguna de sus funciones o metodos
- Los valores que no son recorridos tales como el constructor o el isLocked() son metodos que no tienen instrucciones de flujo así que no se cuentan dentro de la cobertuda de Branches, como los otros si se cuentan y tienen el 100% el total es un 100%
- Porque no recorre al completo todas las lineas de la clase, la cobertura de lineas no cuenta solo las decisiones y las condiciones. Lo cuenta todo asi que cuenta las lineas del constructor y el método que no son llamados

C) 
- Metodos a probar 

## Ejercicio 3 

E) 
- El report-aggregate que dice la relación con los otros. Se encuentra dentro de cada submódulo