

// Değişkenler ve Veri tipleri


void main() {

  var d = "şeker";

  d = "berke" ;

  print(d);

  /*
  Yukarıda gördüğün üzere var değişkeni tanımladığımız "şeker" değiştirip "berke" yapabildik.

  final ve const değişkenleri değişmeyen değişkenlerdir, ilk ne verdiysen o kalır.
  */

  final haftanin_gunleri = 7;

  print(haftanin_gunleri);
  // haftanin_gunleri = 8;  değişkeni değştirmeye çalıştığında hata aldığını göreceksin. final değiştirilemez.

  const kerimin_dogum_gunu = "5 Mart";

  print(kerimin_dogum_gunu);
 // kerimin_dogum_gunu = "6 Mart"; değişkeni değştirmeye çalıştığında hata aldığını göreceksin. const değiştirilemez.

/* Dart const ve final arasındaki farklar;
const ile de final ile de sabit tanımlayabiliriz. const compile time da
yani programımız henüz çalışmaya başlamadığı anda kullanılacak sabitler için,
final ise run time da çalışacak sabitler için tanımlanabilir.
 */

if (1==1)  {
  final haftanin_gunleri = "içerisindeki 7";
  print(haftanin_gunleri);

  /*
  Yukarıdaki 16 satırdaki final değişkenimiz ile aynı ismi koyduk ve hata vermedi,
  çünkü if fonksiyonun altında yaptığımız için bunun altında çalışıyor.
   */
}

/*
Veri türleri;
num, int, double, string, bool, Iterable, list, set, map.
 */

}




void main() {

  int i = 1 ;
  double d = 1.1;

  num n1 = i;
  num n2 = d;

  print(i);
  print(d);
  print(n1);
  print(n2);


  bool isEven = i.isEven;

  String s = "Hello World"; //string veri tipinde alt alta yazmak istiyorsan üçlü tırnak yap.
  String c = """ Oyun ve Uygulama akadamisi ile 
  flutter öğreniyorum.
   """;

  final l = [1, 2, 3]; // list
  final set = {1, 2, 3}; // set
  final map = {"a":1, "b":2 }; // map

  /*
  Veri türleri  (detay)

  object, dynamic, void, null.
   */

  Object o; //object tüm türlerin atası
  dynamic dd; // bir tür değildir, dil özelliğidir.
  // null  kendi türleri var, ileride detaylı işleyecez.

  /* Değişkenler eğer türü net verilmişse veya tanımlarken bir türden veri atandığında bir tür edinir.
   Daha sonra onlara bu türün aksi bir tür değer atanamaz.
   Ancak tür verilmemişse ve tanımlarken türü bilinen bir veri atanmamışsa, değişken dynamic olur ve daha sonra ona her tür değer atanabilir.
*/

}




// Ardışık Çalışma ve Akış Kontrolü

/*
Ardışık çalışma

komut satırları sıra ile çalışır,

bir satır bitmeden diğerine geçilmez,

önce fonksiyonun parametreleri hesaplanır, sonra fonksiyon çağırılır.
 */

void main () {

  print("Hoş geldiniz");

  var mesajsayisi = 5; 
  print("$mesajsayisi adet okunmamış mesajınız var");

  mesajsayisi += 1 ;
  print("$mesajsayisi adet okunmamış mesajınız var");

  if (mesajsayisi > 0 ) {
    print("Yeni mesajınız var!");
  }else {
    print("Yeni mesajınız yok!");
  }
  
 // yukarıda if ve else ile yaptığımızı print üzerinden expression ile kısaca yapalım.
 
print(mesajsayisi>0 ? "Yeni mesajınız var!" : "Yeni mesajınız yok!");

  // if fonksiyonuna else if şeklinde yazarak yeni koşullar belirleyebilirsin.

  if (mesajsayisi == 0 ) {
    print("Yeni mesajınız var!");
  }else if (mesajsayisi == 6) { 
    print("6 yeni mesajınız var!");
  }else {
    print("Yeni mesajınız yok!");
  }

// Yukarıdaki if else mantığı biraz karışık, buna benzer switch metodu var;

switch (mesajsayisi) {
  case 1:
    print("1 mesajınız var!");
    break;
  case 4:
    print("4 mesajınız var!");
    break;

  default: // caselerden hiç biri değil ise bu aşamaya geçecek
    print("çok mesaj");
  }


}




/* akış kontrol komutları: Döngüler

while, do while, for, for in, break ve contine
 */


void main () {
  print("Hoş geldiniz!");

  int bildirimsayisi = 5;

  var baslangic = 0;

  while (baslangic < bildirimsayisi) {  //while döngüsü istenilen değere kadar baslangic arttırıyor.
    print("$baslangic.bildirim");
    baslangic += 1;
  }

  // do while ve while döngüleri arasındaki fark do while'ın 0 saymasıdır.

  do {
    print("$baslangic.bildirim");
    baslangic += 1;
  } while (baslangic < bildirimsayisi);

  // for döngüsü while döngüsünün gelişmiş halidir.

 /* for (;baslangic < bildirimsayisi;) {    yandaki for döngüsü yukarıdaki while döngüsü ile aynı işlevde.
    print("$baslangic.bildirim");
    baslangic += 1;
  } */

  /*
  for ( var baslangic = 0;baslangic < bildirimsayisi;aslangic += 1) { bu for döngüsünün diğerlerinden hiç bir farkı yok.
  print("$baslangic.bildirim");
  }
   */

}



// List, set ve map

// list: sıralı elemanlar

void main() {

}