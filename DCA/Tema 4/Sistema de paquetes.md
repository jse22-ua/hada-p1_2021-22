## Distribución eficiente del SW
- Cuando el SW esté listo debe hacerse llegar a usuarios potenciales
	- Más fácil de instalar -> Más probable que se use
- Debemos evitar instalaciones tipo Windows 
	- `(puya del profesor)`
	- Donde el SO no nos proporciona mecanismos de gestión adecuado para la instalación 
		- No tienen en cuenta dependencias
		- Desconoce componentes ya instalados
		- Permite sobreescritura de archivos ya instalados (DLL Hell) 
			- -> complicaciones con DLL utilizadas con SO Windows más antiguos
		- Como alternativa a estos instaladores Windows ofrece
			- Windows Installer -> instalación, mantenimiento y eliminación de programas

## Formatos de paquetes

Formatos de distribución de software en el mundo del SW libre:
- [[TAR-TGZ-TBZ-TXZ]] (no se suele emplear en la distribución de SW)
	- ![[t4_taz.png]]
- [[DEB]]
	- ![[t4_deb.png]]
- [[RPM]]
	- ![[t4_rpm.png]]