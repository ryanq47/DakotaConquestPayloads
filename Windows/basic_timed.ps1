while (1) {
    Write-Host "DEBUG: HIT"
    Invoke-WebRequest -Uri http://10.30.0.100/persist/teamXX
    Start-Sleep 60
}
