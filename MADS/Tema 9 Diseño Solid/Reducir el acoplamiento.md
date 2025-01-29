Si nuestra aplicación está muy acoplada será difícil de modificar.

Por ejemplo, 

``` java
// Clase Database que maneja operaciones de base de datos
public class Database {
    public void connect() {
        System.out.println("Conectado a la base de datos");
    }

    public void executeQuery(String query) {
        System.out.println("Ejecutando consulta: " + query);
    }
}

// Clase User que está altamente acoplada con Database
public class User {
    Database db;

    public User() {
        db = new Database();  // Alto acoplamiento aquí
        db.connect();
    }

    public void saveUser(String username) {
        db.executeQuery("INSERT INTO users VALUES ('" + username + "')");
    }
}

// Clase principal para probar el código
public class Main {
    public static void main(String[] args) {
        User user = new User();
        user.saveUser("JohnDoe");
    }
}
```

`User` está altamente acoplada a `Database` porque crea una nueva instancia de `Database`. Esto hace que esté directamente acoplada a esta.

La clase `User` llama a los métodos de `Database`, por lo que si hay un cambio en la API `Database`, `User` requerirá cambios también.

No podemos probar `User` de manera aislada o remplazar `Database` por otra sin modificar `User`

El cambio en objetos obliga a hacer cambios en sus colaboradores.