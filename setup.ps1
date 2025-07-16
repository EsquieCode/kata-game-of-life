Write-Host "Initialisation du projet..."

Write-Host "Check Nodejs..."
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
  Write-Error "Node.js n'est pas installer. Installer le d'abord."
  exit 1
}

$nodeVersion = node -v
if ($nodeVersion -match "v(\d+)\.") {
  $nodeMajor = [int]$matches[1]
  if ($nodeMajor -lt 17) {
    Write-Error "Node version $nodeVersion détectée. Version 17 ou supérieure requise."
    exit 1
  }
  Write-Host "Node.js version $nodeVersion OK (>= 17)"
} else {
  Write-Error "Impossible de lire la version de Node.js"
  exit 1
}

# Activation de Corepack
Write-Host "Activation de corepack..."
corepack enable
corepack prepare pnpm@latest --activate

# Install des dépendances
Write-Host "Installation des dépendances..."
pnpm install

Write-Host "Setup terminé avec succes"
