@echo off
cd /d "%~dp0"
echo Enviando para o GitHub...

del /f "%~dp0.git\HEAD.lock" 2>nul
git add middleware.js push_github.bat
git commit -m "Fix: middleware com autenticacao corrigida"
git push origin main
git push origin main:master

echo.
echo Concluido! Acesse: https://yanmell0.github.io/cfopm2026.1.com
pause
