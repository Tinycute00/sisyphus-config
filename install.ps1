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
$ConfigFile = "$ConfigDir\opencode.json"
Copy-Item "$TempDir\opencode.json" $ConfigFile -Force

# --- Auto-Detect Python Ohm MCP Path ---
Write-Host "🔍 Detecting ohm-mcp installation..." -ForegroundColor Cyan
try {
    $PythonPath = (Get-Command python).Source
    $SitePackages = python -c "import site; print(site.getsitepackages()[1])" 2>$null
    if (-not $SitePackages) {
        $SitePackages = python -c "import site; print(site.getsitepackages()[0])"
    }
    
    # Fix backslashes for JSON
    $SitePackagesEscaped = $SitePackages -replace "\\", "/"
    
    if (Test-Path "$SitePackages\ohm_mcp\server.py") {
        Write-Host "✅ Found ohm-mcp at: $SitePackages" -ForegroundColor Green
        
        # Replace placeholder in config
        $JsonContent = Get-Content $ConfigFile -Raw
        $JsonContent = $JsonContent -replace "{PYTHON_SITE_PACKAGES}", $SitePackagesEscaped
        $JsonContent | Set-Content $ConfigFile
    } else {
        Write-Host "⚠️  ohm-mcp not found. Installing..." -ForegroundColor Yellow
        pip install ohm-mcp
        # Try finding again
        $SitePackages = python -c "import site; print(site.getsitepackages()[1])"
        $SitePackagesEscaped = $SitePackages -replace "\\", "/"
        
        $JsonContent = Get-Content $ConfigFile -Raw
        $JsonContent = $JsonContent -replace "{PYTHON_SITE_PACKAGES}", $SitePackagesEscaped
        $JsonContent | Set-Content $ConfigFile
    }
} catch {
    Write-Host "❌ Failed to configure ohm-mcp automatically. You may need to edit opencode.json manually." -ForegroundColor Red
}
# ---------------------------------------

# 4. Install Skills
if (-not (Test-Path $SkillsDir)) { New-Item -ItemType Directory -Path $SkillsDir -Force }
Copy-Item "$TempDir\superpowers\skills\*" $SkillsDir -Recurse -Force

# 5. Cleanup
Remove-Item $TempDir -Recurse -Force

Write-Host "`n✅ Installation Complete!" -ForegroundColor Green
Write-Host "⚠️  IMPORTANT: You must set the GITHUB_PERSONAL_ACCESS_TOKEN environment variable." -ForegroundColor Red
Write-Host "👉 usage: opencode" -ForegroundColor Cyan
