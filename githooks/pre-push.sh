#!/usr/bin/env bash

set -e

echo "Running pre-push checks..."

echo "Formatting with Prettier..."
pnpm format || { echo "Prettier failed"; exit 1; }

echo "Running ESLint..."
pnpm lint:fix || { echo "ESLint failed"; exit 1; }

echo "Running Typecheck..."
pnpm typecheck || { echo "Typecheck failed"; exit 1; }

echo "Running tests..."
pnpm test || { echo "Tests failed"; exit 1; }

echo "Building project..."
pnpm build || { echo "Build failed"; exit 1; }

echo "All pre-push checks passed (Linux/Bash)"