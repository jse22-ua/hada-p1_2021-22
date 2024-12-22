# src/CMakeLists.txt

# Crear una librería con calculador.cpp
add_library(calculadora_lib calculador.cpp)

# Incluir directorios para los encabezados
target_include_directories(calculadora_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Especificar que se usará C++17
target_compile_features(calculadora_lib PUBLIC cxx_std_17)
