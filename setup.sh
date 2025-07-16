#!/bin/bash
set -euo pipefail

echo "Initialisation du projet..."

echo "Check Nodejs..."
if ! command -v node &> /dev/null
then
  echo "Node.js n'est pas installer. Installer le d'abord."
  exit 1
fi

NODE_VERSION=$(node -v)
NODE_VERSION_MAJOR=$(echo "$NODE_VERSION" | sed -E 's/v([0-9]+).*/\1/')

if [ "$NODE_VERSION_MAJOR" -lt 17 ]; 
then
  echo "Node version $NODE_VERSION_MAJOR dectée. Version 17 ou supérieur requise."
  exit 1
fi

echo "Node.js version $NODE_VERSION OK (>= 17)"

echo "Activation corepack..."
corepack enable
corepack prepare pnpm@latest --activate

echo "Installation dépendances..."
pnpm install

echo "Setup terminé avec succes"