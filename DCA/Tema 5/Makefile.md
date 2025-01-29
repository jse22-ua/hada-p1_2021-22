Un fichero en formato ASCII, se permiten comentarios usando `#`. 

El `Makefile` más sencillo consta sólo de reglas:
```
objetivo...: dependencias
(tabulacion) orden
(tabulacion) orden
(tabulacion) orden
(tabulacion) ...

```

Elementos
- objetivo o target 
	- Nombre de un fichero a generar 
	- el de una acción a ejecutar
		- como `clean` que es un objetivo especial `.PHONY`
- dependencias 
	- Es una lista de ficheros de los que depende el objetivo
- orden
	- Son las acciones que `make` realiza para obtener el objetivo

Entre objetivo y dependencias se puede separar con ":" o "::". 
Solo se puede usar separadores de un tipo. Si se usa ":" todas las reglas con ":", si se usa "::" todas las reglas con "::"

Si existen dos objetivos con el mismo nombre y se usa ":" entonces los objetivos se combinan.

``` make
objetivo: dep1
	echo "Regla 1"

objetivo: dep2
	echo "Regla 2"
	
```

que se equivaldría a 
```make 
objetivo: dep1 dep2
	echo "Regla 1"
	echo "Regla 2"
```

Si usas "::" se quedan de manera independiente

``` make
objetivo:: dep1
	echo "Regla 1"

objetivo:: dep2
	echo "Regla 2"
	
```

Que daría mas o menos el mismo resultado 
```bash
	echo "Regla 1"
	echo "Regla 2"
```

pero cada una es una regla distinta

#### Variables especiales
- `$?`
	- Representa la lista de dependencias que has cambiado más recientemente (son reglas más jóvenes que la actual)
``` cmake
objetivo: dep1 dep2
	echo "Dependencias actualizadas: $?"

# como resultado 
# Dependencias actualizadas: dep2
```

- `$^`
	- Representa la lista completa de dependencias
- `$@`
	- Representa el objetivo actual
	
```cmake
programa: programa.o funciones.o
    gcc -o $@ $^

# gcc -o programa programa.o funciones.o
```
- `$<`
	- La primera dependencia en la lista

```makefile
%.o: %.c
    gcc -c $< -o $@

# gcc -c programa.c -o programa.o

```

#### Objetivos especiales

- `all` 
	- Será el primero y representa el objetivo por defecto
- `clean `
	- Borra todos los ficheros intermedios que se puedan volver a generar por `make`
- `dist`
	- Crea un `tar.gz` que contiene la distribución del proyecto
- `install` 
	- instala el resultado de crear el proyecto
- `uninstall` 
	- Desinstala el resultado de crear el proyecto

#### Ejemplos 

Ejemplo  1
```makefile
programa: programa.o funciones.o
    gcc -o programa programa.o funciones.o

programa.o: programa.c
    gcc -c programa.c

funciones.o: funciones.c
    gcc -c funciones.c
clean:
	rm -f programa programa.o funciones.o
```

Ejemplo con variables

``` makefile
    objects = main.o kbd.o command.o display.o insert.o search.o files.o utils.o

    edit : $(objects)
            cc -o edit $(objects)

    main.o : main.c defs.h
            cc -c main.c
    kbd.o : kbd.c defs.h command.h
            cc -c kbd.c
    command.o : command.c defs.h command.h
            cc -c command.c
    ..........
  .PHONY : clean
    clean :
            rm edit $(objects)
```

```makefile
programa: programa.o funciones.o
    gcc -o $@ $^

programa.o: programa.c
    gcc -c $< -o $@

funciones.o: funciones.c
    gcc -c $< -o $@

clean:
    rm -f $^ programa

```
