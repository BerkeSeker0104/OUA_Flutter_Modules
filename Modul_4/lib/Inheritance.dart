// INHERITANCE

import 'package:modul_4/Inheritance.dart';

void main () {
  print("Yeni dersimize hoş geldin !");

  /*
  Nesneler arası bağlantı :

  Bir nesne diğerine referans tutabilir

  bu genel anlamda bir çizge (graph) yapısı oluşturur

  bunun özel bir örneği, bir ağaç yapısıdır

        Flutter'daki widget ağacı (widget tree)

        Bahsedeceğimiz hiyerarşi bu değil !!


ÖZELLEŞMİŞ CLASS'LAR

    bir genel class'ın daha özelleşmiş hali olan classlar
      "extend" eden, hiyerarşin altında olan classlar
      üstündeki classların yerine kullanılabilir.

EXTEND

B classı A classını extend(uzatabilir) edebilir.

A'da olan her şey B'de de varmış gibi olur.

A superclass, B subclass olur

A genel, B onun özelleşmiş hali



class A {
      int a = 0;
 }
class B extends A {
      int b = 0 ;
      // also has a
}



OVERRIDE

A'daki fonksiyonları B'de baştan yazabiliriz

class A {
      void a(){}
}

class B extends A {
    @override
    void a() {
        super.a();

    }
}


POLLYMORPHİSM

B nesnesini bir A referansı olarak gösterebiliyoruz

      A 'daki fonksiyonumuzu çağırdığımızda
      B 'deki @override ile sunulan fonksiyon çağırılır.


   */

List<ogretmen> ogretmenler = [
  ogretmen("Ali"),
  Ingilizceogretmeni("verbs", "John"),
];

for (final o in ogretmenler) {
  o.MerhabaDe();
  }

}


class ogretmen {
  String ad;

  ogretmen(this.ad);

  void MerhabaDe () {
    print("Merhaba ben $ad öğretmen.");
  }
}

class Ingilizceogretmeni extends ogretmen {
  String chapter;

  Ingilizceogretmeni(this.chapter, String name) : super(name);

  @override
  void MerhabaDe() {
    // bunu oluştururken "ctrl + space" sonra fonksiyonu seçtim
    super.MerhabaDe();
    print("I was at chapter $chapter");
  }

}