param(
  [string]$SettingsPath = "settings.xml",
  [int]$MaxAttempts = 6
)

for ($attempt = 1; $attempt -le $MaxAttempts; $attempt++) {
  Write-Output "=== BUILD ATTEMPT $attempt/$MaxAttempts ==="
  mvn clean install -s $SettingsPath
  if ($LASTEXITCODE -eq 0) {
    Write-Output "BUILD_SUCCESS"
    exit 0
  }
  Write-Output "BUILD_FAILED_ATTEMPT_$attempt"
  Write-Output "Agent must inspect errors, apply fixes, and rerun."
}

Write-Output "BUILD_FAILED_MAX_ATTEMPTS"
exit 1
