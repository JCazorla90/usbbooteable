# Verifica el nombre del dispositivo USB y reemplázalo por el tuyo
lsblk

# Desmonta el dispositivo USB
sudo umount /dev/sdb1

# Crea una imagen ISO a partir de un archivo de instalación de Debian o Ubuntu
sudo dd bs=4M if=/path/to/installation.iso of=/dev/sdb conv=fdatasync status=progress

# Muestra un mensaje de finalización
echo "Imagen ISO creada exitosamente en el dispositivo USB."
