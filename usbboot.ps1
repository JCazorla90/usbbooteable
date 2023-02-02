# Verifica la letra de unidad asignada a tu dispositivo USB y reemplázala por la correcta
Get-Volume

# Crea una imagen ISO a partir de un archivo de instalación de Windows
$progress = 0
Write-Progress -Activity "Creando imagen ISO en el dispositivo USB" -Status "En progreso" -PercentComplete $progress
$src = "C:\path\to\installation.iso"
$dst = "\\.\E:"
$wsh = New-Object -ComObject WScript.Shell
$wsh.Run("cmd.exe /c ""diskpart /s """"select disk 2"""";""clean"""", 0, $True)
$wsh.Run("cmd.exe /c ""diskpart /s """"select disk 2"""";""create partition primary"""", 0, $True)
$wsh.Run("cmd.exe /c ""diskpart /s """"select partition 1"""";""format fs=ntfs quick"""", 0, $True)
$wsh.Run("cmd.exe /c ""diskpart /s """"select partition 1"""";""active"""", 0, $True)
$wsh.Run("cmd.exe /c ""diskpart /s """"assign letter=E"""", 0, $True)
$process = [System.Diagnostics.Process]::Start("xcopy.exe", "$src $dst /H /I /F /Y")
$process.WaitForExit()

# Muestra un mensaje de finalización
Write-Progress -Activity "Creando imagen ISO en el dispositivo USB" -Status "Finalizado" -PercentComplete 100
Write-Host "Imagen ISO creada exitosamente en el dispositivo USB."
