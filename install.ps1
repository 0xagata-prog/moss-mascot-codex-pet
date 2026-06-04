$ErrorActionPreference = "Stop"

$petId = "moss-mascot"
$targetDir = Join-Path $HOME ".codex\pets\$petId"
$base = "https://raw.githubusercontent.com/0xagata-prog/moss-mascot-codex-pet/main"

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null

foreach ($file in @("pet.json", "spritesheet.png", "preview.png")) {
    Write-Host "Downloading $file..."
    Invoke-WebRequest -Uri "$base/$file" -OutFile (Join-Path $targetDir $file)
}

Write-Host ""
Write-Host "MOSS Mascot installed!" -ForegroundColor Green
Write-Host "Installed to: $targetDir"
Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Fully restart Codex."
Write-Host "2. Open Settings -> Appearance -> Avatar/Pet."
Write-Host "3. Select MOSS Mascot."
