#include <iostream>
#include <cstdlib>  // Para rand() y srand()
#include <ctime>    // Para time()

using namespace std;

string getComputerChoice() {
    // Generar un número aleatorio entre 0 y 2
    int randomChoice = rand() % 3;

    // Convertir el número en una elección de "piedra", "papel" o "tijera"
    switch (randomChoice) {
        case 0: return "piedra";
        case 1: return "papel";
        case 2: return "tijera";
        default: return ""; // Nunca debería llegar aquí
    }
}

string getPlayerChoice() {
    string playerChoice;
    cout << "Elige piedra, papel o tijera: ";
    cin >> playerChoice;
    return playerChoice;
}

void determineWinner(const string& playerChoice, const string& computerChoice) {
    cout << "Elegiste: " << playerChoice << endl;
    cout << "La computadora eligió: " << computerChoice << endl;

    if (playerChoice == computerChoice) {
        cout << "Es un empate!" << endl;
    } else if (
        (playerChoice == "piedra" && computerChoice == "tijera") ||
        (playerChoice == "papel" && computerChoice == "piedra") ||
        (playerChoice == "tijera" && computerChoice == "papel")
    ) {
        cout << "¡Ganaste!" << endl;
    } else {
        cout << "Perdiste. La computadora ganó." << endl;
    }
}

int main() {
    // Inicializar la semilla para la generación de números aleatorios
    srand(time(0));

    // Obtener la elección del jugador y de la computadora
    string playerChoice = getPlayerChoice();
    string computerChoice = getComputerChoice();

    // Determinar el ganador
    determineWinner(playerChoice, computerChoice);

    return 0;
}
