# Dependencies

# Winget
$source = 'https://github.com/microsoft/winget-cli/releases/lastest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
$outFile = 'AppInstaller.msixbundle'
Write-Host('Downloading Winget installer...')
try {
    Invoke-WebRequest -Uri $source -OutFile $outFile | Invoke-Expression
    Write-Host "Follow installation and then come back..."
    Write-Host('Winget successfully installed!')
}
catch {
    Write-Error 'Warning, Winget installation failed'
}
