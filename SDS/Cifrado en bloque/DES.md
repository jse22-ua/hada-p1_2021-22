
## Contexto 

Lucifer (finales de los 60) -> bloque de 64 bits, clave de 128 bits
- Versión refinada -> clave 56 bits para que quepa en un chip

Lucifer se convierte en DES en 1977 

Críticas 
- Reducción de clave 128 -> 56
- Diseño de cajas "clasificado"


## Esquema

Entradas 
- Texto 64bits
- clave 64 bits (solo 56 bits útiles)

Tres fases
- Permutación inicial 
- 16 rondas SPN , intercambio de mitades
- Permutación inicial inversa

Generación de claves 
- Desplazamiento circular 56 bits
- Selección permuta 48 bits

Descifrado 
- mismo algoritmo con subclaves a la inversa

## Seguridad Actual

Clave de 56 bits
- roto por fuerza bruta en 1000 años con 1M pruebas 
- con 20M dolares y 1M chips con 1M pruebas 
	- 10 Horas
- con 250 K dolares 
	- 3 días 

Además de recorrer todas las claves es necesario identificar el texto en claro 

Cajas de sustitución (S-Boxes)
- no es público
- se sospecha de debilidades ocultas
- Nunca se ha encontrado nada significativo 

Ataques por temporización
(timing attacks)
- medir la diferencia de tiempo de ejecución en función de la entrada permitiendo obtener info de la clave o estado interno 
- No aplicable a DES porque siempre tarda lo mismo, aunque todos los algoritmos con S-Box permiten este tipo de ataques basados en accesos a caché 
## Criptoanálisis

### Criptoanálisis diferencial 
- Se pública en 1990 esta técnica
- Capaz de romper DES en 2^47 pruebas con 2^47 textos claros elegidos
- Poco eficaz con DES
- Cuando se mejoró de Lucifer 
	- add S-Boxes y Permutación P
	- mejoró la resistencia a criptoanálisis diferencial 
- Lucifer 8 rondas -> 256 textos elegidos
- Des de 8 rondas -> 2^14 textos elegidos

### Criptoanálisis Lineal

- Encontrar aproximaciones lineales (Sistema de ecuaciones) a las operaciones que se usan en DES
- Capaz de romper DES con 2^43 textos conocidos
- Sigue siendo poco eficaz con DES