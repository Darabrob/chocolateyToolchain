Write-Host "Installiere Notepad++ ......."
Write-Host "Sleep 5 seconds.."
Start-Sleep -Milliseconds 5000
choco install notepadplusplus -y
$exitCode = $LASTEXITCODE
if ($exitCode -eq 0) {
    Write-Output "Installation von Notepad++ erfolgreich."
} elseif ($exitCode -eq 3010) {
    Write-Output "Installation successful, but a restart is required."
} else {
    Write-Output "Installation failed with exit code $exitCode."
}

Write-Host "Installiere Everything Version 1.4.1 ......."
choco install everything --version=1.4.1 -y
$exitCode = $LASTEXITCODE
if ($exitCode -eq 0) {
    Write-Output "Installation von Everything erfolgreich."
} elseif ($exitCode -eq 3010) {
    Write-Output "Installation successful, but a restart is required."
} else {
    Write-Output "Installation failed with exit code $exitCode."
	Write-Output "Installiere neueste Version..."
	choco install everything -y
}

Write-Host "------------------------------------------"
Write-Host "Alle Tools wurden erfolgreich installiert."