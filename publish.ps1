# Republish C:\local-development\briefing\index.html to GitHub Pages.
# No secrets. No grok.exe. Chief overwrites index.html, then this script
# (or the ST Graph job briefing-publish) commits and pushes main.

[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

$index = Join-Path $root 'index.html'
if (-not (Test-Path $index)) { throw "missing $index" }

$bytes = (Get-Item $index).Length
if ($bytes -lt 200) { throw "index.html is too small ($bytes bytes)" }

git add -- index.html
$st = git status --porcelain -- index.html
if (-not $st) {
    Write-Output 'NO_CHANGE'
    Write-Output 'https://jaytodd01.github.io/jay-briefing/'
    exit 0
}

$stamp = Get-Date -Format 'yyyy-MM-dd HH:mm'
git -c user.useConfigOnly=true commit -m "briefing $stamp"
if ($LASTEXITCODE -ne 0) { throw "git commit failed" }
git push origin main
if ($LASTEXITCODE -ne 0) { throw "git push failed" }
Write-Output 'PUSHED'
Write-Output 'https://jaytodd01.github.io/jay-briefing/'
