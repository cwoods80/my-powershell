# Takes server name, runs windows update and restarts server

$servername=$args[0]
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope process
import-module pswindowsupdate
Get-WindowsUpdate -Install -AutoReboot -ComputerName $servername -RecurseCycle 2 -AcceptAll
Restart-Computer -Force -ComputerName $servername -Wait -For Powershell -Timeout 300 -Delay 2
