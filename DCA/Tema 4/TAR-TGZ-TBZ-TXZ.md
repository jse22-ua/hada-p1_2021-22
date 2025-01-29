## TAR
Formato original TAR (`.tar`)
Usado en entornos UNIX y diseñado por este
Pensado para ser usado con cintas magnéticas
-  (`Tape ARchiver` -> archivador en cintas)
TAR 
- no reduce el tamaño
- solo reúne los diferentes en un solo archivo 
- No comprime

`tar <<opciones>> <<archivoSalida>> <<archivo1>> .. <<archivoN>>`

almacena metainformación de los ficheros
- Fecha de última modificación 
- Propietario
- Permisos
- *enlaces simbólicos*
	- atajo al archivo original
	- apuntan a archivos y directorios
- *enlaces duros*
	- Referencia directa
	- solo apuntas a archivos
	
Estandarizado por las normas POSIX1 / POSIX2
- Este tiene una serie de restricciones y carencias para ser usado en la distribución de SW 
- Solo copia determinados archivos en lugares concretos.
	- No comprueba si tenemos instalado determinado SW o una versión concreta
	- Tenemos que ejecutar determinadas acciones para ver si se ha instalado correctamente

Sabemos que no empaqueta pero si le añadimos opciones podemos enlazar con diversos compresores de forma **automática**. Estos compresores son:
- `gzip` con -z
	- Dando extensiones 
		- `.tar.gz`, `tgz`
	- ejemplo 
		- `tar -czvf archivo.tar.gz archivo1 archivo2 directorio/`
		- ```tar -czvf archivo.tgz archivo1 archivo2 directorio/```
		- `tar -xzvf archivo.tar.gz`
		- `tar -xzvf archivo.tgz`

- `bzip2` con -j
	- Dando extensiones
		- `.tar.bz`, `tbz`
	- ejemplo
		- `tar -cjvf archivo.tar.bz archivo1 archivo2 directorio/`
		- ```tar -cjvf archivo.tbz archivo1 archivo2 directorio/```
		- `tar -xjvf archivo.tar.bz`
		- `tar -xjvf archivo.tbz`
- `xz` con - J
	- Dando extensiones
		- `.tar.xz`, `txz`
	- ejemplo
		- `tar -cJvf archivo.tar.xz archivo1 archivo2 directorio/`
		- ```tar -cJvf archivo.txz archivo1 archivo2 directorio/```
		- `tar -xJvf archivo.tar.xz`
		- `tar -xJvf archivo.txz`

Nota: c es para crear un comprimido, x para extraer el comprimido y v en modo detallado, f archivo especificado

Podemos indicar:
- La información a instalar
- acciones que llevar a cabo en el proceso de instalación o desinstalación
- Comprobación de dependencias
- SW recomendado a completar