# Guía de Ejecución de los Scripts de Configuración

Esta guía le ayudará a ejecutar los scripts de configuración para instalar Python, AWS CLI, AWS SAM CLI y Terraform en un sistema Windows.

## Prerrequisitos

Asegúrese de tener acceso administrativo a su sistema Windows.

## Scripts

1. `install_python.ps1` - Instala la última versión de Python.
2. `install_awscli.ps1` - Instala la última versión del AWS CLI.
3. `install_awssam.ps1` - Instala la última versión del AWS SAM CLI.
4. `install_terraform.ps1` - Instala la última versión de Terraform.

## Instrucciones

Para ejecutar los scripts, siga estos pasos:

1. Abra PowerShell como Administrador.
2. Navegue hasta el directorio `ec2_turnoff/scripts/setup` donde se encuentran los scripts.
3. Ejecute el script tecleando `.\nombre_del_script.ps1`, donde `nombre_del_script.ps1` es el nombre del script que desea ejecutar (por ejemplo, `.\install_python.ps1`).

Nota: Los scripts instalarán Chocolatey si no está ya instalado en su sistema.

Asegúrese de reiniciar su terminal PowerShell o su computadora para garantizar que todos los cambios surtan efecto y que los programas instalados se agreguen al PATH del sistema.

## Solución de Problemas

Si encuentra algún error durante la ejecución de los scripts, asegúrese de que su política de ejecución de PowerShell permita la ejecución de scripts y que tenga una conexión a internet estable.
