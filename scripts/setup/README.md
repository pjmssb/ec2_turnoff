# Setup Scripts Execution Guide

This guide will help you run the setup scripts for installing Python, AWS CLI, AWS SAM CLI, and Terraform on a Windows system.

## Prerequisites

Ensure you have administrative access to your Windows system.

## Scripts

1. `install_python.ps1` - Installs the latest version of Python.
2. `install_awscli.ps1` - Installs the latest version of AWS CLI.
3. `install_awssam.ps1` - Installs the latest version of AWS SAM CLI.
4. `install_terraform.ps1` - Installs the latest version of Terraform.

## Instructions

To execute the scripts, follow these steps:

1. Open PowerShell as an Administrator.
2. Navigate to the `ec2_turnoff/scripts/setup` directory where the scripts are located.
3. Execute the script by typing `.\script_name.ps1`, where `script_name.ps1` is the name of the script you wish to run (e.g., `.\install_python.ps1`).

Note: The scripts will install Chocolatey if it is not already installed on your system.

Please make sure to restart your PowerShell terminal or your computer to ensure that all changes take effect and the installed programs are added to the system PATH.

## Troubleshooting

If you encounter any errors during the execution of the scripts, ensure that your PowerShell execution policy allows the running of scripts and that you have a stable internet connection.
