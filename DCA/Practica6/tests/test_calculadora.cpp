#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>
#include "calculadora.h"

TEST_CASE("funcion calculadora", "[math]") {
    REQUIRE(cuadrado(0) == 0);
    REQUIRE(cuadrado(1) == 1);
    REQUIRE(cuadrado(5) == 25);
    REQUIRE(cuadrado(-3) == 9);
}

TEST_CASE("funcion is_primo", "[math]") {
    REQUIRE(is_primo(2));
    REQUIRE(is_primo(3));
    REQUIRE_FALSE(is_primo(4));
    REQUIRE(is_primo(5));
    REQUIRE_FALSE(is_primo(1));
    REQUIRE_FALSE(is_primo(-7));
    REQUIRE_FALSE(is_primo(0));
}
