# This script install the applications listed in 'internet-apps.json' and 'winget-apps.json'


Import-Module Microsoft.WinGet.Client


$WingetFile = 'winget-apps.json'
$WingetApps = $null

try {
    $WingetApps = Get-Content -Raw $WingetFile | ConvertFrom-Json
        | ForEach-Object { Find-WinGetPackage -Id $_ -MatchOption Equals }
}
catch { Write-Error "Failed to get the list of `'$WingetFile`' Exception: $_" }

Write-Host "`nThis apps will be installed:`n"
ForEach ($App in $WingetApps) { Write-Host "$App.Name $App.Version" }

Write-Host '`nStarting apps installation...`n'

ForEach ($App in $wingetApps) {
    try {
        Install-WinGetPackage -Id $App.Id
        write-host "$($App.Name) successfully installed"
    }
    catch {
        write-error "Failed to install $($App.Name) with error: $_"
    }    
}

Write-Host 'Finished applications installation :3' -ForegroundColor Green
