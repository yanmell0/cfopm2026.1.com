@echo off
cd /d "%~dp0"
echo Iniciando envio para o GitHub...

git init
git remote remove origin 2>nul
git remote add origin https://github.com/yanmell0/cfopm2026.1.com.git
git add index.html
git commit -m "Dashboard CFO PM 2026.2"
git branch -M main
git push -u origin main

echo.
echo Concluido! Acesse: https://yanmell0.github.io/cfopm2026.1.com
pause
