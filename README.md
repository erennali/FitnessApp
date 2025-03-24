# FitnessApp

.NET MAUI (Multi-platform App UI) çerçevesi ile geliştirilmiş, birden fazla platformda sorunsuz deneyim sunan modern bir fitness uygulaması.

## Proje Özellikleri

- Çoklu platform desteği (iOS, Android, Windows, macOS)
- Modern ve sezgisel kullanıcı arayüzü
- Antrenman takip özellikleri
- Kişiselleştirilmiş fitness programları
- Beslenme takibi ve önerileri
- Gelişim grafiklerini görüntüleme
- MERNİS entegrasyonu ile gerçek kullanıcı doğrulama sistemi
- Güvenli kullanıcı kimlik doğrulama ve yetkilendirme
- Çevrimdışı çalışabilme özelliği
- Sosyal medya entegrasyonu

## Kullanılan Teknolojiler

- .NET MAUI (Frontend)
- C# ve XAML (UI ve İş Mantığı)
- ASP.NET Core Web API (Backend)
- Entity Framework Core (ORM)
- SQL Server (Veritabanı)
- MERNİS Web Servisi (T.C. Kimlik Doğrulama)
- Xamarin.Essentials (Cihaz Özellikleri)

## Veritabanı Yapısı

Uygulama, SQL Server veritabanı üzerinde çalışmaktadır. Veritabanı yapısı aşağıdaki ana tablolardan oluşmaktadır:

- **Users**: Kullanıcı bilgileri (T.C. Kimlik No, Ad, Soyad, Doğum Tarihi, İletişim Bilgileri)
- **UserAuthentication**: Kullanıcı giriş bilgileri ve yetkilendirme
- **UserProfiles**: Kullanıcı profil bilgileri (Boy, Kilo, Hedefler)
- **Workouts**: Antrenman programları ve detayları
- **Exercises**: Egzersiz kütüphanesi
- **WorkoutLogs**: Kullanıcıların tamamladığı antrenmanlar
- **ProgressTracking**: Kullanıcı ilerleme verileri
- **Notifications**: Bildirim sistemi

Veritabanı, Entity Framework Core Code-First yaklaşımı ile modellenmiş olup, veritabanı şeması otomatik olarak oluşturulmaktadır.

## MERNİS Entegrasyonu

Uygulama, T.C. Nüfus ve Vatandaşlık İşleri Genel Müdürlüğü'nün sunduğu MERNİS (Merkezi Nüfus İdaresi Sistemi) web servisi ile entegre çalışmaktadır. Bu entegrasyon sayesinde:

- Kullanıcıların gerçek kimlik bilgileri doğrulanmaktadır
- Sahte hesap oluşturulması engellenmektedir
- Yaş doğrulaması yapılarak yasal gerekliliklere uyum sağlanmaktadır
- Kişisel verilerin güvenliği en üst düzeyde tutulmaktadır

## Proje Yapısı

Proje, standart .NET MAUI uygulama yapısını takip etmektedir:

- `FitnessApp/`: Ana uygulama projesi
  - `Platforms/`: Platform özel uygulamalar
  - `Resources/`: Uygulama kaynakları ve varlıkları
  - `Views/`: Kullanıcı arayüzü bileşenleri
  - `ViewModels/`: İş mantığı ve veri bağlama
  - `Models/`: Veri modelleri
  - `Services/`: İş mantığı ve harici servis entegrasyonları
  - `Helpers/`: Yardımcı sınıflar ve uzantılar
  - `Controls/`: Özel UI kontrolleri
  - `Themes/`: Uygulama temaları

- `FitnessApp.API/`: Backend Web API projesi
  - `Controllers/`: API endpoint'leri
  - `Models/`: Veri modelleri
  - `Services/`: İş mantığı servisleri
  - `Data/`: Veritabanı erişim katmanı
  - `Middleware/`: Özel middleware bileşenleri
  - `Extensions/`: Servis uzantıları

## Uygulama Nasıl Çalışır?

1. **Kullanıcı Kaydı ve Doğrulama**:
   - Kullanıcı, kişisel bilgilerini girerek kayıt olur
   - MERNİS servisi üzerinden T.C. Kimlik doğrulaması yapılır
   - Doğrulama başarılı olduğunda kullanıcı profili oluşturulur

2. **Profil Oluşturma**:
   - Kullanıcı, fitness hedeflerini belirler (kilo verme, kas kazanma, vb.)
   - Fiziksel ölçüler ve sağlık bilgileri kaydedilir
   - Sistem, kullanıcıya özel antrenman ve beslenme programı önerir

3. **Antrenman Takibi**:
   - Kullanıcı, günlük antrenmanlarını takip eder
   - Tamamlanan egzersizler kaydedilir
   - İlerleme grafikleri ve istatistikler sunulur

4. **İlerleme Analizi**:
   - Kullanıcının zaman içindeki ilerlemesi analiz edilir
   - Hedeflere ulaşma durumu değerlendirilir
   - Kişiselleştirilmiş öneriler sunulur

## Başlangıç

### Gereksinimler

- Visual Studio 2022 veya daha yeni sürüm (.NET MAUI workload yüklü)
- .NET 6.0 veya daha yeni sürüm
- iOS geliştirmesi için: Mac bilgisayar ve Xcode
- Android geliştirmesi için: Android SDK
- SQL Server (yerel veya Azure)
- MERNİS Web Servisi erişim bilgileri

### Kurulum

1. Depoyu klonlayın
```bash
git clone https://github.com/erennali/FitnessApp.git
```

2. Çözümü Visual Studio'da açın
3. `appsettings.json` dosyasında veritabanı bağlantı dizesini ve MERNİS servis bilgilerini yapılandırın
4. Veritabanını oluşturun
```bash
dotnet ef database update
```
5. Uygulamayı derleyin ve çalıştırın

## Katkıda Bulunma

Katkılarınızı bekliyoruz! Herhangi bir iyileştirme veya hata düzeltmesi için pull request gönderebilir veya issue açabilirsiniz.

## Lisans

Bu proje standart açık kaynak koşulları altında lisanslanmıştır.

## İletişim

Eren Ali Koca - [GitHub Profili](https://github.com/erennali)

Proje Bağlantısı: [https://github.com/erennali/FitnessApp](https://github.com/erennali/FitnessApp)
