// Immutable and Final - Değişmeyen nesneler


import 'package:flutter/cupertino.dart';

void main() {

  print("Yeni dersimize hoş geldin!");

  /*
  mutable : içeriği değişebilen neseneler,

  Immutable : içeriği değişmeyen nesneler
   */

Ogrenci o1 = Ogrenci("Görke");
Ogrenci o2 = Ogrenci("Mizgin");

o1.yas = 17;
o2.yas = 16;
// o1.yas = 18;  hata yok gibi duruyor ama çalıştırdığın zaman hata alacaksın.

// o1 ad = "ahmet"; final yaptığımız için bu kod hata veriyor.

o1.MerhabaDe();
o2.MerhabaDe();


}

/*
Final Field

Değerini değiştiremeyiz. Değişken sonradan başka nesneyi gösteremez.
Final field içeren nesneyi yaratırken şunlardan birini yapmak gerek ;

    ilk değer vermek : final int a = 5;
    Veya constructor'da değer vermek: MyClass(this.a);

late kullanarak değerini daha sonra tek bir kere verebiliriz late int a;
    sonradan sadece bir kez değer verebiliriz a=5;

DİKKAT!
    Değişkenin gösterdiği nesne Immutable değilse içeriği değişebilir.

 */


/*
IMMUTABLE ANNOTATİON

@immutable ile bir class'ın immutable olması gerektiğini belirtebiliriz.
final olmayan  değişkenler programcıya uyarı vereceketir.
fakat kodumuz çalışmaya devam edecektir.

aşşağıda örnek görebilirsin:
 */


@immutable
class Ogrenci {
  final String ad;
  late final int yas;

  /*
  late final int yas; başına late getirdiğimiz için
  constuctor kullanmamıza gerek yok fakat

  late bir söz veriyoruz, ben buna mutlaka bir değer ekleyeceğim

  late eklediğim için constructor daki this.yas kısmını siliyorum.
   */

  /*
  Yukarıda ad ve yas Immutable olmasını istediğimiz için onların başına
  "Final" ekliyoruz böylece sonradan değişemicek.
   */

  Ogrenci(this.ad);

  void MerhabaDe() {
    print("Merhaba benim adım $ad ve $yas yaşındayım.");
  }
}