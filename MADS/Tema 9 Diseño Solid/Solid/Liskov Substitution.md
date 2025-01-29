Define comportamiento de tipos y subtipos en teoría de Tipos Abstractos de Datos.

Para cumplir el principio de sustitución.
- Una clase derivada de una base no debe modificar el comportamiento de la clase padre.
	- Clase derivada: Cualquier programa que use un objeto de la clase base

Cuidado con la herencia. Debe cumplir el criterio #IS_A 
por ejemplo, 
Un gato y un caballo (dos clases) cumplen que son ( #IS_A) mamíferos (clase padre )
Por lo que, en cualquier sitio donde podamos usar una clase mamífero, podremos usar la clase gato o caballo.

## Ejemplo de mal uso de herencia


```java
public class Rectangle {
    double height;
    double width;

    public Rectangle(double height, double width) {
        this.height = height;
        this.width = width;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public void setWidth(double width) {
        this.width = width;
    }
}
```

```java
public class Square extends Rectangle {

    public Square(double side) {
        super(side, side);
    }

    @Override
    public void setWidth(double width) {
        super.setWidth(width);
        super.setHeight(width);
    }

    @Override
    public void setHeight(double height) {
        super.setHeight(height);
        super.setWidth(height);
    }

    public void setSide(double side) {
        this.setHeight(side);
    }
}
```

Un Cuadrado NO ES un Rectángulo. Tienen las misma propiedades, pero la *conducta* de un cuadrado no es la misma que la de un rectángulo.
El rectángulo tiene base y altura pero el cuadrado no. En el cuadrado solo llamaremos a `setWidth`. Tenemos que modificar el comportamiento de la clase rectángulo en la clase cuadrado para que cuando le pongas un valor a ancho cambie la altura cambiando su comportamiento.

En la práctica se suele incumplir este principio.  Dar valores por defecto o no usar herencia y usar solo interfaces.