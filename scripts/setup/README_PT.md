# Guia de Execução dos Scripts de Configuração

Este guia ajudará você a executar os scripts de configuração para instalar Python, AWS CLI, AWS SAM CLI e Terraform em um sistema Windows.

## Pré-requisitos

Certifique-se de ter acesso administrativo ao seu sistema Windows.

## Scripts

1. `install_python.ps1` - Instala a versão mais recente do Python.
2. `install_awscli.ps1` - Instala a versão mais recente do AWS CLI.
3. `install_awssam.ps1` - Instala a versão mais recente do AWS SAM CLI.
4. `install_terraform.ps1` - Instala a versão mais recente do Terraform.

## Instruções

Para executar os scripts, siga estes passos:

1. Abra o PowerShell como Administrador.
2. Navegue até o diretório `ec2_turnoff/scripts/setup` onde os scripts estão localizados.
3. Execute o script digitando `.\nome_do_script.ps1`, onde `nome_do_script.ps1` é o nome do script que você deseja rodar (por exemplo, `.\install_python.ps1`).

Nota: Os scripts instalarão o Chocolatey se ele ainda não estiver instalado em seu sistema.

Por favor, certifique-se de reiniciar seu terminal PowerShell ou seu computador para assegurar que todas as alterações tenham efeito e que os programas instalados sejam adicionados ao PATH do sistema.

## Resolução de Problemas

Se você encontrar algum erro durante a execução dos scripts, certifique-se de que sua política de execução do PowerShell permita rodar scripts e que você tenha uma conexão estável com a internet.
