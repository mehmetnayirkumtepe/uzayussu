# Uzay Üssü Komutanı – Masaüstü Sürümü

Gereken tek şey: Node.js (LTS) → https://nodejs.org (bir kez kurulur)

## Windows
1. ZIP'i bir klasöre çıkar.
2. `1-OYNA-hemen-dene.bat` → oyun masaüstü penceresinde açılır (tarayıcı yok).
3. Kalıcı program için `2-EXE-OLUSTUR.bat` → `dist` klasöründe:
   - `... portable.exe`: kurulumsuz, tek dosya. USB ile sınıfa dağıtılır.
   - `... Setup.exe`: bilgisayara kurulum yapar, masaüstü kısayolu ekler.

## Mac
`1-OYNA-hemen-dene.command` (dene) veya `2-UYGULAMA-OLUSTUR.command` (.dmg üretir).
İlk açılışta: sağ tık → Aç.

## Linux
Terminalde: `npm install && npm run build` → `dist` içinde AppImage.

İpucu: Oyunda F11 ile tam ekran. Windows .exe'yi Windows'ta, Mac uygulamasını Mac'te üretmek en sorunsuzudur.
