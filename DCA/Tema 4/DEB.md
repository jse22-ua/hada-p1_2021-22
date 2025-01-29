La estructura interna de estos ficheros es de un archivo ar
- Hay tres archivos:
	- `debian-binary` 
		- fichero de texto que contiene la versión del formato `deb`
			- la actual -> 2.0
	- `control.tar.gz`
		- contiene la `meta-información` del paquete
	- `data.tar / data.tar.gz / data.tar.bz2 / data.tar.lzma`
		- Contiene los archivos a instalar


Estando en el directorio principal de nuestro proyecto, ejecutamos:
- `mkdir ./debian` para crear una carpeta llamada `debian`
- Creamos una copia de la estructura de carpetas y archivos que tendrá el SW cuando se instale en el sistema del usuario 
	- Por ejemplo los subdirectorios `usr` y `usr/bin`
		- para crear estos hacemos `mkdir -p ./debian/usr/bin` para crear esos directorios
- y copiamos un programa en `./debian/usr/bin`
	- por ejemplo un `helloword`
- Creamos el directorio `debian/DEBIAN` y dentro le añadimos el fichero `control`

```
  Package: helloworld
  Priority: optional
  Section: misc
  Maintainer: dca
  Architecture: amd64
  Version: 1.0
  Depends:
  Description: Increible implementacion de HolaMundo
   Al ser ejecutado, imprime una linea en el terminal con el
   texto: 'Hola Mundo'.
```
- Solo nos queda construir el fichero DEB con
	- `fakeroot dpkg -b ./debian /ruta/hasta/fichero.deb`



Disponemos de un TGZ y tenemos que compilarlo siguiendo las indicaciones del creador

Afortunadamente todo se lleva con un `Makefile` con un objetivo llamado `install` que copia los archivos necesarios en el directorio correspondiente.

Si usamos `dh_make` preparamos el empaquetado de Debian para un archivo fuente original


### Por ejemplo

tenemos un directorio `helloword-1.0` con `hw.c`
```c++
    #include <stdio.h>
    int main (int argc, char *argv[]) {
      printf ("Hola Mundo\n");
      return 0;
    }
```

y un `Makefile`
```make
    # Makefile

    DESTDIR=.
    PROG=hw

    all: $(PROG)

    $(PROG): $(PROG).c
      gcc $(PROG).c -o $@

    install: $(PROG)
      mkdir -p $(DESTDIR)/usr/bin
      cp $(PROG) $(DESTDIR)/usr/bin/

    clean:
      rm -f *~ $(PROG) *.o

    .PHONY: clean install all
```


ejecutamos 

`dh_make -s -e mail@provider.com -f ../helloworlddca-1.0.tar.gz`

crea el directorio `.debian/` con los archivos necesarios `-e para indicar el email`

y genera en el directorio de `debian`

```
changelog  //importante
docs                       
init.d.ex        
menu.ex      
prerm.ex
compat     
helloworlddca.cron.d.ex    
manpage.1.ex     
postinst.ex  //importante
README.Debian
control    //importante
helloworlddca.default.ex   
manpage.sgml.ex  postrm.ex    
README.source
copyright  
helloworlddca.doc-base.EX  
manpage.xml.ex   
preinst.ex   //importante
rules       //importante
source     
watch.ex
```

La extensión `.ex` es que se trata de un ejemplo, los modificamos, eliminamos, usamos como nos convenga.

#### Modificamos su contenido

##### control

Editamos nombre, descripción y dependencias

```control
Source: helloworlddca
Section: misc
Priority: optional
Maintainer: Tu Nombre <mail@provider.com>
Build-Depends: debhelper (>= 9)
Standards-Version: 4.1.5
Homepage: http://example.com

Package: helloworlddca
Architecture: amd64
Depends: ${shlibs:Depends}, ${misc:Depends}
Description: Aplicación de ejemplo "Hola Mundo"
 Este es un paquete de ejemplo que imprime "Hola Mundo" en la terminal.
```

##### rules
Este archivo indica como construir el paquete. Si usa el `Makefile` debería poner

```
#!/usr/bin/make -f
%:
	dh $@

```

##### ``changelog``
Registra los cambios del paquete. Usamos la herramienta `dch` para crear entradas automáticamente incrementando la versión del empaquetado.

`dch --create --package helloworlddca`

Completa la descripción del cambio en el editor que se abra y guarda el archivo.


##### `scripts pre|post`

- `postinst` para después de la instalación 
	- por ejemplo
```bash
#!/bin/bash
echo "Gracias por instalar helloworlddca"

```

- `prerm` se ejecuta antes de desinstalar
	- por ejemplo
```bash
#!/bin/bash
set -e

echo "Ejecutando el script prerm para helloworlddca..."

# Comprobar si el programa se está ejecutando
if pgrep hw > /dev/null; then
    echo "El programa hw se está ejecutando. Deteniéndolo..."
    pkill hw
fi

echo "Limpieza previa a la eliminación completada."

exit 0

```

asegúrate que sean ejecutables:

```bash
chmod +x debian/postinst debian/prerm
```



y pasemos a generar el archivo 
`.deb` con `dpkg-buildpackage -rfakeroot -us -uc`
- `-us (unsigned source)` no firma el paquete fuente con `gpg` 
- `-uc (unsigned changes)` no firma los cambios con `gpg`
- Esto es necesario si no tenemos configurado `gpg`


### Una vez modificado

una vez modificado el `changelog` regeneramos el archivo `.deb` con `dpkg-buildpackage -rfakeroot -us -uc`

Es importante tener en cuenta que `dh_make` hace uso de programas de programas que se encuentran en el paquete `debhelper`

## Instalar `.deb`

Siempre como administradores (`sudo`) con la orden `dpkg`:
`dpkg -i helloworddca_1.0-1_amd64.deb`

con `-I` podemos pedir información del mismo 

## Importante
`dpkg` no tiene en cuenta dependencias con otros paquetes. Para esto usamos `apt-get`, `aptitud` o `apt`