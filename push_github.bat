@echo off
cd /d "%~dp0"
echo Enviando para o GitHub...

del /f "%~dp0.git\HEAD.lock" 2>nul
git add index.html Dashboard_CFO_PM_2026_v2.html push_github.bat
git commit -m "Atualiza dashboard: novo candidato adicionado (92 no total)"
git push origin main
git push origin main:master

echo.
echo Concluido! Acesse: https://yanmell0.github.io/cfopm2026.1.com
pause
