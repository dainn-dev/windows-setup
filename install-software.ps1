# Windows Software Installation Script
# This script installs common software using winget and chocolatey

# Function to check if a command exists
function Test-CommandExists {
    param ($command)
    $oldPreference = $ErrorActionPreference
    $ErrorActionPreference = 'stop'
    try {
        if (Get-Command $command) { return $true }
    } catch {
        return $false
    } finally {
        $ErrorActionPreference = $oldPreference
    }
}

# Install Chocolatey if not present
if (-not (Test-CommandExists choco)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install winget if not present (Windows Package Manager)
if (-not (Test-CommandExists winget)) {
    Write-Host "Installing Windows Package Manager (winget)..."
    $progressPreference = 'silentlyContinue'
    Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Remove-Item Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
}

# List of software to install using winget
$wingetApps = @(
    "CoreyButler.NVMforWindows",
    "Google.Chrome",
    "Mozilla.Firefox",
    "Microsoft.VisualStudioCode",
    "Microsoft.PowerToys",
    "7zip.7zip",
    "Notepad++.Notepad++",
    "Git.Git",
    "Microsoft.WindowsTerminal",
    "Microsoft.PowerShell",
    "Microsoft.Teams",
    "Zoom.Zoom",
    "Discord.Discord",
    "Spotify.Spotify",
    "Adobe.Acrobat.Reader.64-bit",
    "AnyDesk.AnyDesk",
    "VLC.VLC",
    "Skillbrains.Lightshot",
    "lamquangminh.EVKey",
    "Atlassian.Sourcetree",
    "JetBrains.IntelliJIDEA.Ultimate",
    "JetBrains.Rider",
    "JetBrains.DataGrip",
    "ankurk91.GoogleChatElectron"
)

# List of software to install using Chocolatey
$chocoApps = @(
    "nodejs",
    "python",
    "jdk21",
    "docker-desktop",
    "postman",
    "winscp",
    "putty",
    "filezilla",
    "winrar",
    "vlc"
)

# Install software using winget
Write-Host "Installing software using winget..."
foreach ($app in $wingetApps) {
    Write-Host "Installing $app..."
    winget install --id $app --accept-source-agreements --accept-package-agreements --silent
}

# Install software using Chocolatey
Write-Host "Installing software using Chocolatey..."
foreach ($app in $chocoApps) {
    Write-Host "Installing $app..."
    choco install $app -y
}

# Update all installed software
Write-Host "Updating all installed software..."
winget upgrade --all --accept-source-agreements --accept-package-agreements --silent
choco upgrade all -y

Write-Host "Installation completed!" 