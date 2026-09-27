# Rebuild game-res/ra2.mix from the split parts committed to this repository.
$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
if (-not (Test-Path 'game-res')) { throw 'game-res/ not found' }
if (Test-Path 'game-res/ra2.mix') { Write-Host 'game-res/ra2.mix already exists'; exit 0 }
$parts = Get-ChildItem -LiteralPath 'game-res' -Filter 'ra2.mix.part*' | Sort-Object Name
if ($parts.Count -eq 0) { throw 'no ra2.mix.part* files found' }
$out = [System.IO.File]::Create((Join-Path (Get-Location) 'game-res/ra2.mix'))
try {
  foreach ($part in $parts) {
    $in = [System.IO.File]::OpenRead($part.FullName)
    try { $in.CopyTo($out) } finally { $in.Dispose() }
  }
} finally { $out.Dispose() }
Write-Host 'rebuilt game-res/ra2.mix'
