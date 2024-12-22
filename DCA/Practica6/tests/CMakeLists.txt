# tests/CMakeLists.txt

# Buscar Boost
find_package(Boost REQUIRED COMPONENTS unit_test_framework)

# Incluir Catch2 desde FetchContent (si lo necesitas)
include(FetchContent)
FetchContent_Declare(
    catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG v2.13.10
)
FetchContent_MakeAvailable(catch2)

# Crear ejecutables para las pruebas
add_executable(test_calculadora test_calculadora.cpp)
target_link_libraries(test_calculadora PRIVATE calculadora_lib Catch2::Catch2)

add_executable(test_calculadora_boost test_calculadora_boost.cpp)
target_link_libraries(test_calculadora_boost PRIVATE calculadora_lib Boost::unit_test_framework)

# Registrar pruebas
add_test(NAME Catch2Tests COMMAND test_calculadora)
add_test(NAME BoostTests COMMAND test_calculadora_boost)
