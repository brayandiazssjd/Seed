Import-Module Microsoft.WinGet.Client


$WingetFile = 'winget-apps.json'
$WingetApps = $null

try {
    $WingetApps = Get-Content -Raw $WingetFile | ConvertFrom-Json | ForEach-Object {
        Find-WinGetPackage -Id $_ -MatchOption Equals
    }
    
} catch { Write-Error "Failed to get the list of `'$WingetFile`' Exception: $_" }
# Sort and remove repeated ids in $WingetFile.
#Get-Content -Raw $WingetFile | ConvertFrom-Json | Sort-Object
#    | Get-Unique | ConvertTo-Json | Out-File -FilePath .\temp
#Move-Item .\temp $WingetFile -Force


Write-Warning "This apps will be installed:`n"
Write-Host "$($WingetApps[0].Name)"
