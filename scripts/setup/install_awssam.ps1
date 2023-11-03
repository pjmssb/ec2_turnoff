# Ensure Chocolatey is installed and ready
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install the latest stable version of AWS SAM CLI
# choco install aws-sam-cli --yes --> Bad chatGPT command
# From choco documentation --> https://community.chocolatey.org/packages/awssamcli
choco install awssamcli 