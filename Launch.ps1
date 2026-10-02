# PUBGAI offline launcher
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$launcher = Join-Path $root 'PubgaiStart.exe'
$hostExe = Join-Path $root 'PUBGAI.Host.exe'
$payload = Join-Path $root 'payload\MFC150CHS.dll'
foreach ($file in @($launcher, $hostExe, $payload)) {
    if (-not (Test-Path -LiteralPath $file -PathType Leaf)) {
        throw "Missing required file: $file"
    }
}
Start-Process -FilePath $launcher -WorkingDirectory $root -Verb RunAs
