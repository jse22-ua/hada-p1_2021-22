Un módulo está 
- Abierto: si es posible extenderlo 
	- Por ejemplo
		- debería ser posible añadir campos a las estructuras de datos 
		- nuevos elementos de conjuntos de funciones
- Cerrado: Si es posible usarlo desde otro módulo 
	- de manera estable y bien definido

Estas propiedades se pueden implementar usando #herencia. Ya que, esta permite cambiar el código de forma añadida sin eliminar lo anterior.

Por ejemplo, si hacemos una clase guitarra

```java
public class Guitarra{
	private String make;
	private String model;
	private int volumen;
}
```

Pero la empresa nos pide que la guitarra sea más "rock and roll" y nos ha pedido una funcionalidad nueva. 
Podemos aplicar este principio y añadir una funcionalidad extendiendo la clase Guitarra

```java
public class SuperCoolGuitarraConLlamas extends Guitarra{
	private String colorLlamas;
}
```

Con la herencia hemos podido "abrir" la clase y añadirle nuevas funcionalidades sin modificarla, ni recompilar. Por lo que no hay riesgo.

Hoy en día esta idea no es tan revolucionaria, de hecho, hay tendencias que son reacias a usar herencia por posibles problemas en el código que pueden causar.

Algunos lenguajes proponen alternativas para extender el código como en Swift que se utiliza `extension y protocols` para ampliar funcionalidades.

## Mal uso de Herencia

Tenemos una clase llamada Lista Sencilla

```java
public class ListaSencilla{
    private List datos = new ArrayList();

    public void insertar(String elemento) {
        datos.add(elemento);
    }
 
    public void insertarVarios(Collection elementos) {
        for (String elemento : elementos)
            this.insertar(elemento);
}
```

Queremos añadir una auditoría de manera que cada vez que se añada a la lista se informe a un objeto auditor.

```java
public class ListaAuditable extends ListaSencilla {
    private Auditor auditor;
 
    public ListaAuditable(Auditor auditor) {
        super();
        this.auditor = auditor;
    }
 
    @Override
    public void insertar(String elemento) {
        super.insertar(elemento);
        this.auditor.elementoInsertado(elemento);
    }
 
    @Override
    public void insertarVarios(Collection elementos) {
        super.insertarVarios(elementos);
        for (String elemento : elementos)
            this.auditor.elementoInsertado(elemento);
    }
}
```

El código tiene un bug.
- Cuando se inserta una colección de elementos se notifica dos veces.
	- La implementación de `insertarVarios` en la superclase llama a `insertar` y como también notifica al auditor.
	- Pero `insertarVarios` de la clase hija también notifica al auditor por su cuenta. Así que le doble notifica al auditor.

Forma de arreglarlo

```java
public class ListaAuditable extends ListaSencilla {
    private Auditor auditor;
 
    public ListaAuditable(Auditor auditor) {
        super();
        this.auditor = auditor;
    }
 
    @Override
    public void insertar(String elemento) {
        super.insertar(elemento);
        this.auditor.elementoInsertado(elemento);
    }
}
```

probamos el método `insertarVarios` y parece que funciona pero se depende del método de `insertarVarios` de la clase padre . Si está se cambia nuestro método dejará de funcionar.

Por ejemplo: 
Si cambiamos `insertarVarios` por `addAll` se rompe la clase hija y tenemos que volver a la anterior implementación

```java
public class ListaSencilla implements Lista {
    private List datos = new ArrayList();
 
    @Override
    public void insertar(String elemento) {
        datos.add(elemento);
    }
 
    @Override
    public void insertarVarios(Collection elementos) {
        datos.addAll(elementos);
    }
 }
```

```java
public class ListaAuditable extends ListaSencilla {
    private Auditor auditor;
 
    public ListaAuditable(Auditor auditor) {
        super();
        this.auditor = auditor;
    }
 
    @Override
    public void insertar(String elemento) {
        super.insertar(elemento);
        this.auditor.elementoInsertado(elemento);
    }
 
    @Override
    public void insertarVarios(Collection elementos) {
        super.insertarVarios(elementos);
        for (String elemento : elementos)
            this.auditor.elementoInsertado(elemento);
    }
}
```

### Conclusión
- Los métodos de la clase padre no deben basar su implementación en otros métodos.
	- Si no se quiere que se sobrescriba se usa `final`
- Un método de una clase hija no debe basarse en detalles de implementación de la clase padre. Esta puede cambiar en cualquier momento.

La idea de que una clase esté cerrada no es compatible con la aceptación de cambio.

Podríamos combinar la idea de hacer refactorización y la necesidad de que la clase tiene que ser cerrada. Diciendo que la interfaz publicada es lo que tiene que estar cerrado. 

- Una interfaz publicada != pública. 
	- Si está pública se pierde la posibilidad de ser refactorizada.