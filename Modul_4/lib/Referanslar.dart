/*
Değişkenler, değerler ve referanslar

    değişkenler değer tutmaz,
      değişkenler değerlere referans tutarlar.

Referans
  bir nesneyi gösteren bir ok (telefon numarası gibi)
    Nesneden bağımsız, başka nesneye bakmaya başlayabilir
      iki referans aynı nesneye bakabilir.
 */

class ogrenci{
  String ad;
  int _yas;

  ogrenci? SiraArkadasi;

  ogrenci(this.ad, this._yas);


  void MerhabaDe () {
    print("Merhaba benim adım  $ad, yaşım $_yas,  ");

    if (SiraArkadasi != null){
      print("Sıra arkadaşım : ${SiraArkadasi!.ad}");
    }
  }

  void DogumGununuKutla() { // bu fonksiyonu çağırdığımızda yaşımız bir artacak.
    _yas +=1;
  }
}



void main() {
  print("Module 4.2 dersine hoşgeldin!!");


  ogrenci O1 = ogrenci("Özge", 22);
  ogrenci O2 = ogrenci("Berke", 22);
  ogrenci O3 = ogrenci("Kerim", 22);


  O1.MerhabaDe();
  O2.MerhabaDe();

  O1 = O2;
  print("O1 = O2;");

  print("O1:");
  O1.MerhabaDe();

  print("O2:");
  O2.MerhabaDe();


  O1.ad = "Fatma";
  print("O1.ad = \'Fatma\'");

  print("O1:");
  O1.MerhabaDe();

  print("O2:");
  O2.MerhabaDe();

  /*
  Yukarıda O1 değiştirdik sadece fakat ikiside değişti, bu referansların kanıtıdır.
   */
//------------------------------------------------------------------------------


  /*
  Nesneler arası bağlantı :

      bir nesne diğerine referans tutabilir.
         bu genel anlamda bir çizge (graph) yapısı oluşturur.
   */

O1.SiraArkadasi = O2;
O2.SiraArkadasi = O1;

O1.MerhabaDe();
O2.MerhabaDe();
O3.MerhabaDe();




}