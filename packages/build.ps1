$ErrorActionPreference = 'Stop'
Set-StrictMode -Version 4.0

$here = Split-Path -Parent $PSCommandPath
Get-ChildItem -Directory $here | ForEach-Object {
    Push-Location $_
    choco pack
    Pop-Location
}