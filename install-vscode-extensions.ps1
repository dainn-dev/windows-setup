# VS Code Extensions Installation Script

# List of common VS Code extensions to install
$extensions = @(
    # Programming Languages
    "ms-python.python",
    "ms-dotnettools.csharp",
    "ms-vscode.cpptools",
    "golang.go",
    "redhat.java",
    "ms-vscode.powershell",
    "ms-azuretools.vscode-docker",
    
    # Web Development
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode",
    "ritwickdey.liveserver",
    "ms-vscode.vscode-typescript-next",
    "formulahendry.auto-rename-tag",
    "formulahendry.auto-close-tag",
    
    # Git
    "eamodio.gitlens",
    "mhutchie.git-graph",
    
    # Themes and Icons
    "dracula-theme.theme-dracula",
    "vscode-icons-team.vscode-icons",
    
    # Productivity
    "christian-kohler.path-intellisense",
    "streetsidesoftware.code-spell-checker",
    "ms-vscode-remote.remote-ssh",
    "ms-vscode-remote.remote-wsl",
    
    # Database
    "ms-ossdata.vscode-postgresql",
    "mtxr.sqltools",
    
    # Testing
    "testspace.testspace",
    "hbenl.vscode-test-explorer"
)

# Install each extension
Write-Host "Installing VS Code extensions..."
foreach ($extension in $extensions) {
    Write-Host "Installing $extension..."
    code --install-extension $extension
}

Write-Host "VS Code extensions installation completed!" 