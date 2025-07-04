

## En claro 

Sin ningún tipo de seguridad 

## Cifrado 

Todas las contraseñas se cifran con la misma clave 

La misma contraseña produce el mismo resultado 

Posibilidad de precálculo 

## Hashing 

No se puede descifrar 
Ataque muy rápido basado en GPU

## Hashing + sal 

concatena un valor aleatorio (sal) de tamaño significativo de bits 
Difícil precálculo 

La sal se almacena junto al hash para hacer la comprobación 

## PBKDF + sal 

En vez de usar hash se usas una derivación de clave que hace un gran N.º de iteraciones

Ralentiza los ataques de GPU
Client-Independent Update
Recursos externos