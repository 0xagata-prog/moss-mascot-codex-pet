$ErrorActionPreference = "Stop"

$petId = "moss-mascot"
$sourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$targetDir = Join-Path $HOME ".codex\pets\$petId"

$requiredFiles = @("pet.json", "spritesheet.png", "preview.png")
foreach ($file in $requiredFiles) {
    $path = Join-Path $sourceDir $file
    if (-not (Test-Path -LiteralPath $path)) {
        Write-Host "Missing required file: $file" -ForegroundColor Red
        Write-Host "Make sure you extracted the full zip before running this installer."
        Read-Host "Press Enter to exit"
        exit 1
    }
}

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null

foreach ($file in $requiredFiles) {
    Copy-Item -Force -LiteralPath (Join-Path $sourceDir $file) -Destination (Join-Path $targetDir $file)
}

Write-Host ""
Write-Host "MOSS Mascot installed successfully." -ForegroundColor Green
Write-Host "Installed to: $targetDir"
Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Fully restart Codex."
Write-Host "2. Open Settings -> Appearance -> Avatar/Pet."
Write-Host "3. Select MOSS Mascot."
Write-Host ""
Read-Host "Press Enter to exit"
