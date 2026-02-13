Get-ChildItem "$PSScriptRoot\Private\*.ps1" -File | ForEach-Object { . $_.FullName }
Get-ChildItem "$PSScriptRoot\Public\*.ps1" -File | ForEach-Object { . $_.FullName }