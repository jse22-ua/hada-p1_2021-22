Dice que ningún cliente debería depender de un método que no usa. 

Sugiere dividir interfaces grandes en más pequeñas y especificas (*Role Interfaces*). De este modo los clientes sólo tienen que saber los métodos que le sean útiles.

Esto lo convierte:

Sistema desacoplado, menos dependencias y fácil de refactorizar, cambiar, redesplegar.

Parecida a [[Single Responsability o Responsabilidad única]] pero aplicada a interfaces en vez de clases.

## Por ejemplo

```java
public interface LineIO {
   String read();
   void write(String lineToWrite); 
}
```

En general, pocos objetos va a leer y escribir al mismo tiempo, así que:

```java
public interface LineReader {
   String read();
}

public interface LineWriter {
    void write(String lineToWrite);
}
```

