

$files = Get-Content -Raw | ConvertFrom-Json './Files.json'

foreach ($item in $files) {
    foreach ($origin in $item.origin) {
        try {
            Copy-Item $origin $item.backup-directory
        }
        catch {
            Write-Host "Failed to copy $origin"
        }    
    }
}




