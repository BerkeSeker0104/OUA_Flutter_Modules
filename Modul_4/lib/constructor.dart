// Constructor - Nesne yaratırken yapabiliceklerimiz

/*
Constructor ve Field'lar

ilk değer
      tanımlama esnasında
      parametre
      Initializer list

   sonra verilen değer
      Constructor body
 */



import 'package:flutter/cupertino.dart';
import 'package:modul_4/ogrenci.dart';

void main() {

  print("Yeni dersimize hoş geldin!");

  Ogrenci o1 = Ogrenci("Görke", 17);
  Ogrenci o2 = Ogrenci("Mizgin", 16);
  Ogrenci o3 = Ogrenci.onSekiz("Berke");
  Ogrenci o4 = Ogrenci.cc();

  o1.MerhabaDe();
  o2.MerhabaDe();
  o3.MerhabaDe();
  o4.MerhabaDe();


}

/*
İsimli Constructor'lar

Farklı parametre listesi alan constructor

birbirine redirect edilebilir.

      this.named()
      this()
      super.named()
      super()

 burada birden çok constructor kullanmayı görüyoruz.
 */

const o = Ogrenci("cc", 11);

@immutable
class Ogrenci {
  final String ad;
  final int yas;


  const Ogrenci(this.ad, int y) : yas = y ;
  // yukarıda Initializer list yöntemini görebilirsin.

  const Ogrenci.onSekiz(String ad) : this(ad, 18); // 2. constructor

  factory Ogrenci.cc() {
    return o ;

  }

  void MerhabaDe() {
    print("Merhaba benim adım $ad ve $yas yaşındayım.");
  }
}

/*
Const constructor

Immutable nesnelerde olabilir.

Const'un uygun olduğu  yerlerde const nesne üretir

    aynı parametreler için tek bir instance pyalaşılır

     5 gibi sabit değerlere eşdeğer
 */

/*
Factory

nesneyi kendisi yaratıp dönen static fonksiyon gibidir.

Aynı constructor çağırır gibi çağrılır.
 */