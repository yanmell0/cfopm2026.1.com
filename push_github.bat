@echo off
cd /d "%~dp0"
echo Enviando para o GitHub...

del /f "%~dp0.git\HEAD.lock" 2>nul
git rm --cached --ignore-unmatch middleware.js
del /f middleware.js 2>nul
git add push_github.bat
git commit -m "Remove: autenticacao removida"
git push origin main
git push origin main:master

echo.
echo Concluido! Acesse: https://yanmell0.github.io/cfopm2026.1.com
pause
