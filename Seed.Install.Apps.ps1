# This script install the applications listed in 'internetApps.json' and 'wingetApps.json'


$wingetFile = 'wingetApps.json'
$internetFile = 'internetApps.json'
$wingetApps = $null
$internetApps = $null

try {
    $wingetApps = Get-Content -Raw $wingetFile | ConvertFrom-Json 
}
catch {
    Write-Host "Failed to get the list of `'$wingetFile`' Exception: $_"
}

try {
    $internetApps = Get-Content $internetFile -Raw | ConvertFrom-Json 
}
catch {
    Write-Error "Failed to get the list of `'$internetFile`' Exception: $_"
}

Write-Host 'This apps will be installed:'
wingetApps | ForEach-Object -Process { Write-Host $_.name }
internetApps | ForEach-Object -Process { Write-Host $_.name }

Write-Host 'Starting apps installation...'

ForEach ($id in $wingetApps) {
    try {
        & winget install $id
        Write-Host "$id successfully installed"
    }
    catch {
        Write-Error "Failed to install $id, with error: $_"
    }    
}

ForEach ($app in $internetApps) {
     & Invoke-WebRequest -Uri $app.uri -OutFile 
}

Write-Host 'Finished applications installation.'
