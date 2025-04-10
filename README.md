# Windows Setup Automation Scripts

This repository contains PowerShell scripts to automate the installation of common software and VS Code extensions on a new Windows system.

## Prerequisites

- Windows 10 or later
- PowerShell 5.1 or later
- Administrator privileges

## Installation Scripts

### 1. Main Software Installation (`install-software.ps1`)

This script installs common Windows software using winget and Chocolatey package managers.

#### Included Software:

- **Web Browsers**
  - Google Chrome
  - Mozilla Firefox

- **Development Tools**
  - Visual Studio Code
  - Git
  - Node.js
  - Python
  - JDK 8
  - Docker Desktop
  - Postman

- **System Utilities**
  - 7-Zip
  - Notepad++
  - PowerShell
  - Windows Terminal
  - PowerToys

- **Communication Tools**
  - Microsoft Teams
  - Zoom
  - Discord

- **Media Players**
  - VLC
  - Spotify

- **Other Tools**
  - WinSCP
  - PuTTY
  - FileZilla
  - WinRAR

#### Usage:

1. Open PowerShell as Administrator
2. Navigate to the script directory
3. Run the script:
   ```powershell
   .\install-software.ps1
   ```

### 2. VS Code Extensions Installation (`install-vscode-extensions.ps1`)

This script installs a comprehensive set of useful VS Code extensions.

#### Included Extensions:

- **Programming Languages**
  - Python
  - C#
  - C++
  - Go
  - Java
  - PowerShell
  - Docker

- **Web Development**
  - ESLint
  - Prettier
  - Live Server
  - TypeScript
  - Auto Rename Tag
  - Auto Close Tag

- **Git Tools**
  - GitLens
  - Git Graph

- **Themes and Icons**
  - Dracula Theme
  - VS Code Icons

- **Productivity**
  - Path Intellisense
  - Code Spell Checker
  - Remote SSH
  - Remote WSL

- **Database**
  - PostgreSQL
  - SQLTools

- **Testing**
  - Test Explorer

#### Usage:

1. Make sure VS Code is installed (it's included in the main installation script)
2. Open PowerShell as Administrator
3. Navigate to the script directory
4. Run the script:
   ```powershell
   .\install-vscode-extensions.ps1
   ```

## Notes

- Both scripts require administrator privileges to run
- Some installations might require user interaction (like accepting license agreements)
- The scripts are set up to handle most prompts automatically
- You can modify the lists of software and extensions in the scripts to suit your needs

## Troubleshooting

If you encounter any issues:

1. Make sure you're running PowerShell as Administrator
2. Check if your system meets the prerequisites
3. Verify your internet connection
4. Some antivirus software might block the installation of certain packages

## Contributing

Feel free to modify the scripts to add or remove software/extensions according to your needs. 