Write-Host "Starting IIS..."

try {
    $iis = Get-Service -Name W3SVC -ErrorAction SilentlyContinue

    if ($iis -ne $null) {
        if ($iis.Status -ne "Running") {
            Start-Service -Name W3SVC
            Write-Host "IIS started successfully."
        } else {
            Write-Host "IIS already running."
        }
    } else {
        Write-Host "IIS (W3SVC) not installed."
    }
}
catch {
    Write-Host "Error starting IIS: $_"
    exit 1
}