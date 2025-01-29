
Inversión de dependencias. 
Trata de definir correctamente las dependencias. 
Las abstracciones deben depender únicamente de otras abstracciones y no de implementaciones concretas.

Reglas 
1. Los módulos de alto nivel no deberían depender de módulos de bajo nivel. Ambos deben depender de abstracciones.
2. Las abstracciones no deberían depender de detalles. Al contrario, Los detalles deben depender de las abstracciones

## Mal diseño
```java
public class Lamp {

    public void switchOn() {
        // Encendemos la lámpara
    }

    public void switchOff() {
        // Apagamos la lámpara
    }
}

public class Button {

    private Lamp lamp;
    private Boolean on = false;

    public Button(Lamp lamp) {
        this.lamp = lamp;
    }

    public void turnOn() {
        if (!on) {
            on = true;
            lamp.switchOn();
        }
    }

    public void turnOff() {
        if (on) {
            on = false;
            lamp.switchOff();
        }
    }
}
```


Ligamos la clase botón para que encienda o apague solo lámparas, no podemos encender televisores, ventiladores, o cualquier aparato electrónico.

Podemos aplicar el principio declarando una interfaz con método apagar y encender. De forma que se pueda conectar con botón con cualquier otro objeto que implemente la interfaz.
```java
public interface Switchable {
    public void switchOn();
    public void switchOff();
}

public class Lamp implements Switchable {
    @Override
    public void switchOn() {
        // Encendemos la lámpara
    }

    @Override
    public void switchOff() {
        // Apagamos la lámpara
    }
}

public class TvSet implements Switchable {
    @Override
    public void switchOn() {
        // Encendemos la TV
    }

    @Override
    public void switchOff() {
        // Apagamos la TV
    }
}

public class Button {

    private Switchable device;
    private Boolean on = false;

    public Button(Switchable device) {
        this.device = device;
    }

    public void turnOn() {
        if (!on) {
            on = true;
            device.switchOn();
        }
    }

    public void turnOff() {
        if (on) {
            on = false;
            device.switchOff();
        }
    }
}

...

    public static void main(String[] args) {
        Lamp lamp = new Lamp();
        TvSet tv = new TvSet();
        Button lampButton = new Button(lamp);
        Button tvButton = new Button(tv);
        lampButton.turnOn();
        tvButton.turnOn();
    }

```


En el caso de POO, podemos aplicar el principio usando inyección de dependencias o definiendo factorías.

Por ejemplo, el ejemplo que hemos tomado en [[Interface Segregation]] eliminamos la dependencia entre `logger` concreto y hacemos una interfaz `ILogger` y podemos usar factoría para elegir un tipo de `logger`

```java
public interface ILogger {
    public void log(Level level, String message);
}

public class StandardLogger implements ILogger {
    public void log(Level level, String message) {
        // Implementación
    }
}

public class FileLogger implements ILogger {
    public void log(Level level, String message) {
        // Implementación
    }
}

public LoggerFactory {
    static public ILogger standardLogger() {
        return new StandardLogger();
    }
    static public ILooger fileLogger() {
        return new FileLogger();
    }
}

public class Foo {
    private ILogger logger;
    
    public Foo(ILogger logger) {
        this.logger = logger;
    }
    
    public void method() {
        logger.log(Level.WARNING, "Log message");
    }
}

...

    public static void main(String[] args) {
        Foo foo = new Foo(LoggerFactory.standardLogger());
        foo.method();
    }
        
```

Esto no es que tenga que hacerse así solo es un ejemplo sencillo de inyección de dependencias.