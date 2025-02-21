Write-Host "Installiere Notepad++ ......."
choco install notepadplusplus -y
$exitCode = $LASTEXITCODE
if ($exitCode -eq 0) {
    Write-Output "Installation successful."
} elseif ($exitCode -eq 3010) {
    Write-Output "Installation successful, but a restart is required."
} else {
    Write-Output "Installation failed with exit code $exitCode."
}




Write-Host "------------------------------------------"
Write-Host "Alle Tools wurden erfolgreich installiert."