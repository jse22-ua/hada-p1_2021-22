#define BOOST_TEST_MODULE MathOpsTest
#include <boost/test/included/unit_test.hpp>
#include "calculadora.h"

BOOST_AUTO_TEST_CASE(cuadrado_test) {
    BOOST_CHECK_EQUAL(cuadrado(0), 0);
    BOOST_CHECK_EQUAL(cuadrado(1), 1);
    BOOST_CHECK_EQUAL(cuadrado(5), 25);
    BOOST_CHECK_EQUAL(cuadrado(-3), 9);
}

BOOST_AUTO_TEST_CASE(is_primo_test) {
    BOOST_CHECK(is_primo(2));
    BOOST_CHECK(is_primo(3));
    BOOST_CHECK(!is_primo(4));
    BOOST_CHECK(is_primo(5));
    BOOST_CHECK(!is_primo(1));
    BOOST_CHECK(!is_primo(-7));
    BOOST_CHECK(!is_primo(0));
}
