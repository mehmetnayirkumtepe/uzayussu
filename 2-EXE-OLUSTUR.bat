@echo off
chcp 65001 >nul
net session >nul 2>&1
if %errorlevel% neq 0 (
  echo Yonetici izni isteniyor, acilan pencerede EVET deyin...
  powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
  exit /b
)
cd /d "%~dp0"
where node >nul 2>nul || (echo Node.js yuklu degil. https://nodejs.org adresinden LTS surumunu kurup tekrar calistirin. & pause & exit /b)
rmdir /s /q "%LOCALAPPDATA%\electron-builder\Cache\winCodeSign" 2>nul
set CSC_IDENTITY_AUTO_DISCOVERY=false
call npm install
call npm run build -- --win portable
echo.
if exist "dist\*.exe" (
  echo BASARILI! Portable exe "dist" klasorunde.
  explorer dist
) else (
  echo HATA: exe olusmadi. Yukaridaki hata mesajini kopyalayip gonderin.
)
pause
