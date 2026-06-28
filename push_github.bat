@echo off
cd /d "%~dp0"
echo Enviando para o GitHub...

del /f "%~dp0.git\HEAD.lock" 2>nul
git add -A
git commit -m "Atualiza dashboard: novo candidato (92 no total)" --allow-empty
git push origin main
git push origin main:master

echo.
echo Concluido! Acesse o Vercel apos fazer Redeploy:
echo https://cfopm2026-1-com.vercel.app
pause
