$url = "https://raw.githubusercontent.com/bloxxiastudio/setup/refs/heads/main/DeployHistory.txt"
$file = "DeployHistory.txt"

Write-Host "Updating $file from $url..."
try {
    Invoke-WebRequest -Uri $url -OutFile $file
    Write-Host "Successfully updated $file." -ForegroundColor Green
} catch {
    Write-Error "Failed to update $file. Error: $_"
}
