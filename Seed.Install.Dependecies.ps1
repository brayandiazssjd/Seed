# Dependencies

# Winget
$source = 'https://github.com/microsoft/winget-cli/releases/lastest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
$outFile = 'AppInstaller.msixbundle'
Write-Host('Downloading Winget installer...')
try {
    Invoke-WebRequest -Uri $source -OutFile $outFile
    Write-Host("Follow installation and then come back...")
    & "./$outFile"
    Write-Host('Winget successfully installed!')
}
catch {
    Write-Host('Warning, Winget installation failed')
}
