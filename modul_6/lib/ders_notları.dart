/*
                          FLUTTER'A GİRİŞ
App'i Hazırlamak

   pubspec.yaml ile gelen kütüphaneler
        flutter pub get
                Tools -> Flutter menüsünde  veya pubspec.yaml'ı açınca üstte ==> pub get kısmına tıkla
                  kütüphaneler Android Studio'da External Libraries'te görünür
                      .packages
                           External Packages => Dart Packages => kütüphaneleri burada görebilirsin



App'i Çalıştırmak

   main() fonksiyonun olduğu .dart dosyasını çalıştırıyoruz
      flutter run lib/main.dart yazarak komut satırında çalıştırabilirsin
        Android Studio'dan run configuration çalıştırabilirsin
          Run ve Debug aynı şeyler, Debug ile ek olarak breakpointlerde durabiliyoruz
            Debug ile çalıştırmaya alış


Run tuşuna bastığımızda
  telefona android ve ios klasöründeki taşıyıcı uygulama atılır
    bunun içinde Dart kodumuz main() fonksiyonu ile çalışmaya başlar
      runApp() fonksiyonuna verilen widget ile Flutter başlar
        Telefonun ekranını kullanmaya başlarız


Uygulamanın Çalışması
  runApp()'e bir widget veriyoruz
    widget yaratılır
      Eğer StatefulWidget ise State'i yaratılır
        Az sonra State'in initState() fonksiyonu çağırılır
          Zamanı gelince ve ara sıra bu widget'in build() fonksiyonu çağırılır
            bunun içinde widget yaratılır
              Butono basma gibi olaylar ile fonksiyonlar çağırılır
                Orada setState yaparsak build() fonksiyonu çağırılır



Flutter projesi çalıştırıldığında bütün kodlar telefon veya emülatöre otomatik
   olarak kurulan bir kabuk uygulama içerisinde çalıştırılır. Programın çıktıları
     anlık olarak bilgisayara transfer edilir. Eğer runApp() fonksiyonu çağırıldıysa,
       bu fonksiyona verilen widget ağaç yapısının başlangıcı olmak üzere telefon veya
         emülatör ekranında kullanıcı arayüzü görüntülenir.




                      WİDGET KAVRAMI

Widget Ağacı

  runApp()'e verdiğimiz widget herhangi bir widget olabilir
    Genellikle MaterialApp'in görsel widgetlerden önce gelir

Kodumuzla widgetler yaratarak ve
  child/ children ile bir ağaç oluştururuz
    koddaki ağaç: Flutter Outline / Structure
      Structure'da kodumuzun özetini görebilirsin
        Flutter Outline Structure ile aynı özellikler fakat daha detaylı
          Flutter Outline boş gözüküyor ise Dart Analysis tıkla ve restart yap

Ekrandaki tüm görsel elemanlar
  widget hiyerarşinin bir parçasıdır
    Flutter Inspector (gerçkeleşen ağaç yapısına denir yani uygulamada çalışan
      ağaç yapsınıa denir.)


WIDGET'LERIN YENILENMESI

  Ekranın yenilenmesi gerektiğinde
      setState()'i çağırdığımızda
      Hot reload yaptığımızda
  Widgetlerin build() fonksiyonları çağırılır


Hot Reload
  Dosyaları değiştirdiğimizde bu değişiklikler uygulamaya girer
    hot reload tuşuna bastığımızda (sarı renkte şimşek işarti)
      uygulamayı baştan başlatmadan, çalışan uygulama değişir
        ayrıca uygulamanın en üst widgetinin build() fonksiyonu tekrar çağırılır
          çok hızlı bir şekilde ekran yeni kod ile güncellenir
            bazı durumlarda hot reload yetmiyor onun için hot restart yapmamız gerekiyor

Hot Restart
  hot reload mevcut nesneleri aklında tutarak çalışır
    State nesnelerine yeni değişkenler eklersek bunlar eski nesnede bulunmaz
      bu durumlarda hot restart ile uygulamayı baştan başlatırız
        uygulama main() fonksiyonu tekrar çağırılarak en baştan başlar

Stop-Start
  Yeni kütüphaneler eklersek bunlar hot restart ile uygulamaya geçemez
    bu durumlarda uygulmayı durdurup baştan başlatırız
 */