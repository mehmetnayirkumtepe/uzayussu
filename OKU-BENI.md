# Uzay Üssü Komutanı – Yayınlama Rehberi

## 1) Tarayıcıda (kurulumsuz)
index.html dosyasına çift tıkla.

## 2) itch.io (en kolay web yayını)
index.html, manifest.json, sw.js, icon.svg dosyalarını ZIP yap -> itch.io'da "HTML" türünde proje oluştur -> ZIP'i yükle -> "This file will be played in the browser" kutusunu işaretle.

## 3) Telefona/bilgisayara kurulabilir uygulama (PWA)
Klasörü HTTPS bir yere koy (GitHub Pages, Netlify, okul sitesi). Chrome'da siteyi aç -> menüden "Ana ekrana ekle / Uygulamayı yükle". Sonrasında internetsiz çalışır.

## 4) Windows / Mac programı (.exe)
Node.js kur, bu klasörde:
  npm install
  npm start        (deneme)
  npm run build    (dist/ klasöründe kurulum dosyası)

## 5) Android uygulaması (.apk)
  npm i @capacitor/core @capacitor/cli @capacitor/android
  npx cap init "Uzay Üssü" tr.okul.uzayussu --web-dir=.
  npx cap add android
  npx cap open android   (Android Studio'dan APK/AAB üret)
