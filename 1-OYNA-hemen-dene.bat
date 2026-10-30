@echo off
chcp 65001 >nul
echo Uzay Ussu Komutani masaustu uygulamasi aciliyor...
where node >nul 2>nul || (echo Node.js yuklu degil. https://nodejs.org adresinden LTS surumunu kurup tekrar calistirin. & pause & exit /b)
if not exist node_modules call npm install
call npm start
