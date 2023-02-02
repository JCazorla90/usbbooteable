# Verifica el nombre del dispositivo USB y reemplázalo por el tuyo
diskutil list

# Desmonta el dispositivo USB
diskutil unmountDisk /dev/disk2

# Crea una imagen ISO a partir de un archivo de instalación de macOS
echo "Copiando imagen ISO al dispositivo USB..."
sudo dd if=/path/to/installation.iso of=/dev/disk2 bs=1m 2>&1 | pv -petra | grep --line-buffered -o '[0-9]*%'

# Monta el dispositivo USB de nuevo
diskutil mountDisk /dev/disk2

echo "Proceso finalizado con éxito."
