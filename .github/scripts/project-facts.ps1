Write-Output "=== pom files ==="
Get-ChildItem -Recurse -Filter pom.xml | ForEach-Object { $_.FullName }

Write-Output "=== probable lambda handlers ==="
Get-ChildItem -Recurse -Include *.java | Select-String -Pattern 'RequestHandler|RequestStreamHandler' | ForEach-Object { $_.Path + ':' + $_.LineNumber }

Write-Output "=== probable spring boot apps ==="
Get-ChildItem -Recurse -Include *.java | Select-String -Pattern '@SpringBootApplication' | ForEach-Object { $_.Path + ':' + $_.LineNumber }

Write-Output "=== ci files ==="
Get-ChildItem -Recurse -Include *.yml,*.yaml,Jenkinsfile | Where-Object { $_.FullName -match '\.github\\workflows|Jenkinsfile|azure-pipelines.yml' } | ForEach-Object { $_.FullName }
