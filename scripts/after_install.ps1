Write-Host "After install script running..."

$path = "C:\inetpub\wwwroot\PramodApi"

if (!(Test-Path $path)) {
    New-Item -ItemType Directory -Path $path
    Write-Host "Application folder created."
}

Write-Host "After install completed."