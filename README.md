# Crear Usb Booteable desde Macos 🍎

![](https://lemppics.lemp.io/1661690001749.jpg)

### Verifica el nombre del dispositivo USB y reemplázalo por el tuyo
```shell
diskutil list

```
### Desmonta el dispositivo USB
    diskutil unmountDisk /dev/disk2

### Crea una imagen ISO a partir de un archivo de instalación de macOS

    sudo dd if=/path/to/installation.iso of=/dev/disk2 bs=1m

### Monta el dispositivo USB de nuevo
    diskutil mountDisk /dev/disk2
