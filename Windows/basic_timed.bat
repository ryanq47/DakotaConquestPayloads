@echo off
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {
    while ($true) {
        Write-Host 'DEBUG: HIT'
        Invoke-WebRequest -Uri http://10.30.0.100/persist/teamXX
        Start-Sleep -Seconds 60
    }
}"
