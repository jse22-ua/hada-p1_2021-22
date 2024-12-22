import std.stdio;

/// Clase Juguete
class Juguete {
    string nombre; // Nombre del juguete
    bool roto;     // ¿Está roto?
    
    /// Constructor
    this(string nombre) {
        this.nombre = nombre;
        this.roto = false; // Al crear el juguete, no está roto
    }

    /// Método para jugar con el juguete
    void jugar() 
    in {
        // Precondición: No se puede jugar si el juguete está roto
        assert(!roto, "¡No puedes jugar con un juguete roto!");
    } out {
        // Postcondición: Después de jugar, el juguete tiene la misma propiedad "roto"
        assert(!roto, "¡El juguete no debería romperse mientras juegas normalmente!");
    } body {
        writeln("¡Estás jugando con ", nombre, "! ¡Qué divertido!");
    }

    /// Método para reparar el juguete
    void reparar() 
    in {
        // Precondición: Solo se puede reparar si está roto
        assert(roto, "¡No tiene sentido reparar un juguete que no está roto!");
    } out {
        // Postcondición: El juguete debe estar "no roto" después de la reparación
        assert(!roto, "¡El juguete debería estar reparado ahora!");
    } body {
        roto = false;
        writeln(nombre, " está reparado y listo para jugar.");
    }

    /// Invariante de clase
    invariant {
        // El nombre del juguete nunca debe estar vacío
        assert(nombre.length > 0, "El juguete debe tener un nombre válido.");
    }
}

/// Clase derivada: JugueteInteractivo
class JugueteInteractivo : Juguete {
    int bateria; // Carga de la batería (0-100)

    /// Constructor
    this(string nombre, int bateria) {
        super(nombre);
        this.bateria = bateria;
    }

    /// Método redefinido: Jugar con precondición adicional
    override void jugar() 
    in {
        super.jugar(); // Llamamos a la precondición del padre
        // Precondición adicional: No se puede jugar si la batería está descargada
        assert(bateria > 0, "¡No puedes jugar con un juguete interactivo sin batería!");
    } body {
        writeln("¡Estás jugando con el juguete interactivo ", nombre, "!");
        bateria -= 10; // Reducimos la batería después de jugar
        if (bateria < 0) bateria = 0;
    }
}

void main() {
    // Crear juguetes
    Juguete peluche = new Juguete("Osito");
    JugueteInteractivo robot = new JugueteInteractivo("Robot bailarín", 50);

    // Jugar con ellos
    peluche.jugar();
    robot.jugar();

    // Romper el peluche y tratar de jugar (esto violará la precondición)
    peluche.roto = true;
    // peluche.jugar(); // Esto fallará porque está roto

    // Reparar el peluche
    peluche.reparar();

    // Descargar la batería del robot y tratar de jugar (esto violará la nueva precondición)
    robot.bateria = 0;
    // robot.jugar(); // Esto fallará porque no tiene batería
}
