@echo off
echo Running pre-push checks (CMD)...

pnpm format
if errorlevel 1 (
    echo Prettier failed
    exit /b 1
)

pnpm lint:fix
if errorlevel 1 (
    echo ESLint failed
    exit /b 1
)

pnpm typecheck
if errorlevel 1 (
    echo Typecheck failed
    exit /b 1
)

pnpm test
if errorlevel 1 (
    echo Tests failed
    exit /b 1
)

pnpm build
if errorlevel 1 (
    echo Build failed
    exit /b 1
)

echo All pre-push checks passed (CMD)
exit /b 0