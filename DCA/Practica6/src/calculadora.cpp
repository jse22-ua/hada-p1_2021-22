#include <cmath>

int cuadrado(int x) {
    return x * x;
}

bool is_primo(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= std::sqrt(n); ++i) {
        if (n % i == 0) return false;
    }
    return true;
}
