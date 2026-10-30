# Bulutta Derleme (bilgisayara hiçbir şey kurmadan)

Bu paket GitHub'ın ücretsiz sunucularında .exe, .dmg, AppImage, .apk ve HTTPS web yayını üretecek şekilde hazırlandı.

## Adımlar
1. https://github.com adresinde ücretsiz hesap aç, **New repository** ile boş bir depo oluştur (adı: uzay-ussu, Public).
2. Depoda **uploading an existing file** bağlantısına tıkla. ZIP'ten çıkardığın TÜM dosyaları ve `.github` klasörünü sürükle-bırak, **Commit changes** de.
   (`.github` klasörü gizli görünebilir; klasörü dosya yöneticisinde "gizli dosyaları göster" ile aç.)
3. **Web + PWA (HTTPS):** Depoda Settings → Pages → Source: **GitHub Actions** seç. Sonra Actions sekmesi → "Web yayini" → Run workflow. Bitince Pages adresin (https://KULLANICI.github.io/uzay-ussu/) hazırdır. Chrome'da açıp "Uygulamayı yükle / Ana ekrana ekle" ile PWA olarak kurulur.
4. **Masaüstü ve Android:** Actions sekmesi → "Derle" → Run workflow. 10-20 dk sonra çalışma sayfasının altındaki **Artifacts** bölümünden indir:
   - masaustu-windows-latest: .exe (portable ve Setup)
   - masaustu-macos-latest: .dmg
   - masaustu-ubuntu-latest: .AppImage
   - android-apk: debug .apk (telefona doğrudan kurulur; "bilinmeyen kaynaklardan kurulum" izni gerekir)

## Notlar
- APK imzasız "debug" sürümüdür; Play Store için imzalı AAB gerekir (bundan vazgeçtik).
- Bir adım kırmızı (hatalı) biterse, adımın üzerine tıklayıp günlüğü gör ve bana yapıştır; birlikte düzeltelim.
