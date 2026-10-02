# PUBGAI offline restore
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$launcher = Join-Path $root 'PubgaiStart.exe'
if (-not (Test-Path -LiteralPath $launcher -PathType Leaf)) {
    throw "Missing required file: $launcher"
}
Start-Process -FilePath $launcher -ArgumentList '--restore' -WorkingDirectory $root -Verb RunAs -Wait
