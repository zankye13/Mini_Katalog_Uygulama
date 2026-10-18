# Mini Katalog - Müzik Mağazası Mobil Uygulaması

Müzik enstrümanları ve ses ekipmanları için bir e-ticaret mini kataloğu olarak tasarlanmış; temiz, modern ve yayına hazır bir Flutter mobil uygulaması. **Temiz Mimari (Clean Architecture) İlkeleri**, modüler dosya yapısı ve güçlü durum yönetimi (state management) standartlarına tam uyumlu olarak geliştirilmiştir.

## Ekran Görüntüleri
## 📸 Ekran Görüntüleri

<p align="center">
  <table border="0">
    <tr>
      <td align="center" width="25%">
        <b>Ana Sayfa</b><br><br>
        <img src="mini_katalog\Screenshots\home_screen.png" width="200" alt="Ana Sayfa">
      </td>
      <td align="center" width="25%">
        <b>Ürün Detay</b><br><br>
        <img src="mini_katalog\Screenshots\product_detail.png" width="200" alt="Ürün Detay">
      </td>
      <td align="center" width="25%">
        <b>Sepetim</b><br><br>
        <img src="mini_katalog\Screenshots\cart_list.png" width="200" alt="Sepetim">
      </td>
      <td align="center" width="25%">
        <b>Boş Sepet</b><br><br>
        <img src="mini_katalog\Screenshots\empty_cart.png" width="200" alt="Boş Sepet">
      </td>
    </tr>
  </table>
</p>

## Öne Çıkan Özellikler

* **Duyarlı (Responsive) Katalog:** Yüksek performanslı `GridView.builder` ile dinamik ürün listeleme.

* **Detaylı Ürün Sayfası:** Özel ürün açıklamaları, fiyatlandırma ve dinamik teknik özellik etiketleri (`Chip` widget'ları).

* **Navigasyon ve Sayfalar Arası Veri Taşıma:** Flutter'ın `Navigator` yapısı ve Route Arguments kullanılarak güvenli veri aktarımı.

* **Global Sepet Yönetimi (Singleton Pattern):**

  * Anlık ürün adedi yönetimi (arttırma, azaltma, listeden tamamen çıkarma).

  * Gruplandırılmış ürün gösterimi (tekrar eden satırlar yerine `x N` adet bilgisi).

  * Anlık ve dinamik toplam sepet tutarı hesaplama.

  * Sayfalar arası geçişlerde sepet durumunun korunması (state persistence).

* **Kullanıcı Geribildirimi:** Kullanıcı eylemlerinde `SnackBar` ile anlık görsel bilgilendirme.

## Mimari ve Proje Yapısı

Proje, kodun okunabilirliğini artırmak, test edilebilirliği kolaylaştırmak ve gelecekteki geliştirmelere zemin hazırlamak adına **Modüler Temiz Mimari** desenini takip eder.

```
lib/
│── models/
│   ├── product.dart          # Temel ürün veri modeli (serileştirme destekli)
│   ├── product_data.dart     # Sahte veri kaynağı (Müzik Mağazası teması)
│   ├── cart_item.dart        # Ürün ve dinamik adet bilgisini bağlayan model
│   └── cart_manager.dart     # Global Durum Yöneticisi (Singleton Pattern)
│
│── screens/
│   ├── home_screen.dart      # Katalog ana sayfası (GridView yerleşimi)
│   ├── product_detail_screen.dart # Ürün detay görünümü
│   └── cart_screen.dart      # Adet kontrollü dinamik sepet ekranı

│── widgets/
└── main.dart                 # Uygulama başlangıç noktası ve tema konfigürasyonu

```

### Kullanılan Tasarım Desenleri (Design Patterns)

1. **Singleton Pattern (`CartManager`):** Uygulama yaşam döngüsü boyunca sepet verisinin bellekte tek bir merkezden yönetilmesini sağlar.

2. **Factory Pattern (`Product.fromMap`):** Uygulamayı gelecekteki REST API / JSON veri entegrasyonlarına hazır hale getirir.

3. **Stateless ve Stateful Ayrımı:** Arayüz bileşenlerini hafif tutmak için statik ekranlarda `StatelessWidget`, anlık UI yenilemesi gereken etkileşimli alanlarda ise `StatefulWidget` (`setState`) kullanılmıştır.

## Teknolojiler ve Bağımlılıklar

* **Framework:** [Flutter](https://flutter.dev/) (Stable Channel, SDK ^3.x)

* **Dil:** [Dart](https://dart.dev/)

* **Arayüz Standartları:** Material Design 3 (Material You)

* **İkonlar:** `cupertino_icons` & Material Icons

## Ön Gereksinimler ve Sistem İhtiyaçları

Projeyi yerel ortamınızda derleyip çalıştırmadan önce aşağıdaki araçların kurulu ve yapılandırılmış olduğundan emin olun:

1. **Flutter SDK:** Sürüm `3.19.0` veya üzeri ([Flutter İndir](https://docs.flutter.dev/get-started/install)).

2. **Dart SDK:** Flutter ile birlikte otomatik yüklenir.

3. **Android Studio / VS Code:** Flutter ve Dart eklentileri aktif edilmiş olmalıdır.

4. **Android SDK & NDK:**

   * Android SDK Toolchain (SDK Sürüm 34+)

   * Android NDK (Side-by-side sürüm `28.x` veya üzeri)

5. **Emülatör / Fiziksel Cihaz:** Android API seviyesi 21 veya üzeri.

Sistem kurulumunuzu doğrulamak için terminalde şu komutu çalıştırabilirsiniz:

```bash
flutter doctor
```

##  Kurulum ve Çalıştırma Rehberi

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları sırasıyla uygulayın:

### 1. Depoyu (Repository) Klonlayın

```bash
git clone https://github.com/KULLANICI_ADI/mini_katalog.git
cd mini_katalog
```

### 2. Bağımlılıkları Yükleyin

`pubspec.yaml` dosyasındaki gerekli paketleri projeye çekin:

```bash
flutter pub get
```

### 3. Derleme Önbelleğini Temizleyin (İsteğe Bağlı)

Temiz bir derleme ortamı sağlamak için:

```bash
flutter clean
flutter pub get
```

### 4. Uygulamayı Çalıştırın

Android emülatörünüzün veya fiziksel cihazınızın bağlı olduğundan emin olun (`flutter devices`), ardından şu komutla uygulamayı başlatın:

```bash
flutter run
```

##  Testleri Çalıştırma

Projede yer alan otomatik widget testlerini çalıştırmak için:

```bash
flutter test
```

## Lisans

Bu proje MIT Lisansı altında lisanslanmıştır. Detaylar için `LICENSE` dosyasına göz atabilirsiniz.