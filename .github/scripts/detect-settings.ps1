param(
  [string]$RootDir = (Get-Location).Path
)

$rootSettings = Join-Path $RootDir "settings.xml"
if (Test-Path $rootSettings) {
  Write-Output $rootSettings
  exit 0
}

$found = Get-ChildItem -Path $RootDir -Filter settings.xml -Recurse -Depth 3 -ErrorAction SilentlyContinue | Select-Object -First 1
if ($found) {
  Write-Output $found.FullName
  exit 0
}

Write-Output "NOT_FOUND"
exit 1
