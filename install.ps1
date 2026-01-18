# Sisyphus Config Installer
# Install command: iwr https://raw.githubusercontent.com/Tinycute00/sisyphus-config/main/install.ps1 | iex

Write-Host "🪨 Installing Sisyphus Config (Professional Team Mode)..." -ForegroundColor Cyan

$ConfigDir = "$env:USERPROFILE\.config\opencode"
$SuperpowersDir = "$ConfigDir\superpowers"
$SkillsDir = "$SuperpowersDir\skills"
$RepoUrl = "https://github.com/Tinycute00/sisyphus-config.git"
$TempDir = "$env:TEMP\sisyphus-install"

# 1. Backup existing config
if (Test-Path "$ConfigDir\opencode.json") {
    Write-Host "📦 Backing up existing config..." -ForegroundColor Yellow
    Move-Item "$ConfigDir\opencode.json" "$ConfigDir\opencode.json.bak" -Force
}

# 2. Clone repo to temp
if (Test-Path $TempDir) { Remove-Item $TempDir -Recurse -Force }
Write-Host "⬇️ Cloning Sisyphus config..." -ForegroundColor Cyan
git clone $RepoUrl $TempDir

# 3. Install Config
if (-not (Test-Path $ConfigDir)) { New-Item -ItemType Directory -Path $ConfigDir -Force }
Copy-Item "$TempDir\opencode.json" "$ConfigDir\opencode.json" -Force

# 4. Install Skills
if (-not (Test-Path $SkillsDir)) { New-Item -ItemType Directory -Path $SkillsDir -Force }
Copy-Item "$TempDir\superpowers\skills\*" $SkillsDir -Recurse -Force

# 5. Cleanup
Remove-Item $TempDir -Recurse -Force

Write-Host "`n✅ Installation Complete!" -ForegroundColor Green
Write-Host "⚠️  IMPORTANT: You must set the GITHUB_PERSONAL_ACCESS_TOKEN environment variable." -ForegroundColor Red
Write-Host "👉 usage: opencode" -ForegroundColor Cyan
