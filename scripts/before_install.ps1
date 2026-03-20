Write-Host "Stopping IIS..."

try {
    $iis = Get-Service -Name W3SVC -ErrorAction SilentlyContinue

    if ($iis -ne $null) {
        if ($iis.Status -eq "Running") {
            Stop-Service -Name W3SVC -Force
            Write-Host "IIS stopped successfully."
        } else {
            Write-Host "IIS already stopped."
        }
    } else {
        Write-Host "IIS (W3SVC) not installed."
    }
}
catch {
    Write-Host "Error stopping IIS: $_"
    exit 1
}