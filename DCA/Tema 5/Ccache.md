Herramienta sencilla -> caché para el compilador

Se cachean (guardan en `~/.ccache/`) los resultados de compilaciones previas (`.o`) , estos se proporcionan cuando se detecta que se debe volver a compilar el mismo código.
Por lo que no se deben volver a regenerar, no hay que volver a ejecutar el compilador.
(Ahorro de tiempo)

Soporta `C++, Objective-C, Objective-C++`

Esta herramienta proporciona la misma salida del compilador que obtendríamos si no la estuviéramos usando.

La única forma de saber si estamos usando `ccmake` es viendo los tiempos de compilación.

## Características
- Mantiene estadísticas de aciertos/fallos
- Gestiona el tamaño de cache automáticamente
- Puede cachear compilaciones con `warnings`
- fácil de instalar
- No supone una gran sobrecarga al proceso de compilación
- Se puede
	- usar enlaces duros para evitar copias
- Puede
	- comprimir los archivos en la cache para ahorrar sitio

## Limitaciones
Solo cachea los resultados de compilaciones de ficheros individuales de derivados de C.
Solo funciona con GCC o compiladores similares
No soporta algunas opciones de compilación, si se detecta alguna de esta llama al compilador real.

## Ejecución 

```bash
ccache [opciones de ccache] gcc main.c -o main
```

También podemos crear enlaces simbólicos copiando el ejecutable `ccache` 
```bash
cp ccache /usr/local/bin/
```

y 

```bash
ln -s /usr/local/bin/ccache /usr/local/bin/gcc
ln -s /usr/local/bin/ccache /usr/local/bin/g++
ln -s /usr/local/bin/ccache /usr/local/bin/cc
ln -s /usr/local/bin/ccache /usr/local/bin/c++

```

Así cuando se invoque a cualquiera de estos compiladores le dirigirán a `ccmake`

Por ejemplo, ejecutamos sin `ccache`

``` bash
time make 
make clean
time make
```

y después ejecutamos con `ccache` 

```bash
make clean
time make CC="ccache gcc"
make clean
time make CC="ccache gcc"
```


Podemos saber la configuración actual con `ccache -p`
Se guarda la configuración en el fichero `ccache.conf`.
Interrogamos la  caché con `ccache -s`
La borramos completa con `ccache -C`
`ccache` sabe que tiene que recompilar calculando un `hash` de varias informaciones que deben se únicas en cada compilación. 
Esto lo calcula con el algoritmo `MD4` 
- Entorno criptográfico débil
- pero suficiente para obtener un índice en `ccache`

`ccache` tiene tres modos de trabajar:
- Modo directo: usado por defecto
	- Más rápido 
	- no ejecuta preprocesador
- Modo preprocesador: emplea si se define la variable de entorno `CCACHE_NODIRECT`
- Modo de dependencias: Modo no usa el preprocesador para nada

## `Sccache`
Versión de Mozilla similar a `ccache` soporta otros lenguajes a parte de C y C++.