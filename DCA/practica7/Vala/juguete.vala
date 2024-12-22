using GLib;

/// Clase Juguete
class Juguete {
    public string nombre; // Nombre del juguete
    public bool roto;     // ¿Está roto?
    
    /// Constructor
    public Juguete(string nombre) {
        this.nombre = nombre;
        this.roto = false; // Al crear el juguete, no está roto
    }

    /// Método para jugar con el juguete
    public void jugar() {
        // Precondición: No se puede jugar si el juguete está roto
        if (roto) {
            throw new GLib.Error("¡No puedes jugar con un juguete roto!");
        }

        // Postcondición: Después de jugar, el juguete tiene la misma propiedad "roto"
        print("¡Estás jugando con %s! ¡Qué divertido!\n", nombre);
    }

    /// Método para reparar el juguete
    public void reparar() {
        // Precondición: Solo se puede reparar si está roto
        if (!roto) {
            throw new GLib.Error("¡No tiene sentido reparar un juguete que no está roto!");
        }

        // Postcondición: El juguete debe estar "no roto" después de la reparación
        roto = false;
        print("%s está reparado y listo para jugar.\n", nombre);
    }
}

/// Clase derivada: JugueteInteractivo
class JugueteInteractivo : Juguete {
    public int bateria; // Carga de la batería (0-100)

    /// Constructor
    public JugueteInteractivo(string nombre, int bateria) : base(nombre) {
        this.bateria = bateria;
    }

    /// Método redefinido: Jugar con precondición adicional
    public override void jugar() {
        base.jugar(); // Llamamos al método jugar de la clase base

        // Precondición adicional: No se puede jugar si la batería está descargada
        if (bateria <= 0) {
            throw new GLib.Error("¡No puedes jugar con un juguete interactivo sin batería!");
        }

        print("¡Estás jugando con el juguete interactivo %s!\n", nombre);
        bateria -= 10; // Reducimos la batería después de jugar
        if (bateria < 0) bateria = 0;
    }
}

int main() {
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

    return 0;
}
