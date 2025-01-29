
Formato similar al `.deb`
Se emplea en distribuciones como `Red Hat Linux`, `Fedora`, `SuSE Linux`

No se ve como crear paquetes en este formato pero usando #Alien se ve como se crean de forma semi-automática

## #Alien

Se ejecuta como administrador o con sudo
Se le pasa una archivo `.tgz`, `.deb` o `.rpm` para convertir de ese formato a otro:
- Con `-t` se convierte de `.deb` o `.rpm` a `.tgz`
- Con `-r` se convierte de `.tgz` o `.deb` a  `.rpm`
- Con `-d` se convierte de `.tgz` o  `.rpm` a `.deb`

si intentamos pasar de `.deb` podemos hacer
```bash
sudo alien -t ../helloworlddca_1.0-1_amd64.deb
# para convertir de .deb a tgz
sudo alien -r ../helloworlddca_1.0-1_amd64.deb
# para convertir de .deb a .rpm
```

si usas `-c` puede convertir los scripts que se ejecutan cuando el paquete se instala o desinstala.