

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

}

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

  for (;baslangic < bildirimsayisi;) {    yandaki for döngüsü yukarıdaki while döngüsü ile aynı işlevde.
    print("$baslangic.bildirim");
    baslangic += 1;
  } 

  
  for ( var baslangic = 0;baslangic < bildirimsayisi;aslangic += 1) { bu for döngüsünün diğerlerinden hiç bir farkı yok.
  print("$baslangic.bildirim");
  }

  
  // List, set ve map

// list: sıralı elemanlar

void main() {

  final mesajlar = ["a", "b", "c"];

  print(mesajlar);
  
  print(mesajlar[0]); // Listenin ilk terimi "[0]" şeklinde kullanılıyor, böylece listenin ilk elemanı çağrılır.

  mesajlar.add("d"); // Terim eklemek için ".add" kullanıyoruz.
  print(mesajlar);

  mesajlar.addAll(["e", "f"]); // "addAll" bütün terimleri ekliyor.
  print(mesajlar);

  print('${mesajlar.length} adet mesaj var.');  // ".length" sayesinde listede kaç eleman var görebilirsin.

  if (mesajlar.contains("a")) {
    print("a var");
  } else {
    print("a yok");
  }

  mesajlar[0] = "A"; // ilk elemanı değiştirdik, "a" ==> "A" halini aldı.
  print(mesajlar);

  mesajlar.remove('A'); // Listeden eleman silmek için "remove" kullandık.
  print(mesajlar);


  print(mesajlar.first); //Listenin ilk elemanını görebilirsin.
  print(mesajlar.last); //Listenin son elemanını görebilirsin.

  if (mesajlar.isNotEmpty) {
    print("Liste boş değil");

  } else {
    print("Liste boş");
  }


  for (final mesajlar in mesajlar) { //For döngüsü ile listenin elemanlarını görebiliyoruz.
    print(mesajlar);
  }



// Set ==> Sırasısz elemanlar, her elemandan bir tane

final arkadaslar = {'ali', 'ayşe', 'mehmet'};
  print(arkadaslar);

  arkadaslar.add("özge"); // set ".add" ile ekleme yapabiliriz, aynı list deki gibi.
  print(arkadaslar);

  print("özgeyi tekrar ekelemeye çalışalım");

  arkadaslar.add('özge'); // Gördüğün üzere eklenmedi, her elemandan yalnızca bir tane
  print(arkadaslar);

  //  print(arkadaslar[0]); bunu çalıştımak istediğimiz de hata verecek, set de bu olmuyor.

  print(arkadaslar.first);
  print(arkadaslar.last);

  print(arkadaslar.length); //Set eleman sayısını bulmak için ".length" kullandık.

  final baska_set = arkadaslar.intersection({'ayşe', 'mehmet', 'berke'}); // burada farklı bir set ile arkadaslar setindeki kesişim elemanlarını görücez.
  print(baska_set);




  // MAp ==> bir tür elemandan diğer tür elemana



  final etiketler = {
  "arkadaslar" : 2,
  "okul": 5,
    'iş': 8,
  };

  print(etiketler);

  print(etiketler['iş']); // map de iş değerinde kaç kişi olduğunu böyle görebilirsin,
  etiketler['iş'] = 9; // mapde değeri böyle değiştirebilirsin,
  print(etiketler);

  if (etiketler.isNotEmpty) {
    print("Map boş değil");
  }else {
    print("Map boş");
  }

  print(etiketler.containsKey('okul')); // Map de bu keyden var mı diye sorabilirsin ==> ture ya da false cevabı alacaksın


  // Generic Türler ==> türlere gelen parametreler

  // Örnek : yukarıdaki etiketler üzerine gel ve alt + enter, add type annoctation bas türünü ve türe gelen parametreyi görecesin

  /*final Map<String, int> etiketler = {  burada bu bir map ve içerisine int şeklinde yazman gerekiyor diyor.
  "arkadaslar" : 2,
  "okul": 5,
    'iş': 8,
  };
   */
  
  }
  
  
// Nesneler ve Referanslar

// Değişkenler değer tutmaz, değişkenler değerlere referans tutar.

/*
Telefon rehberinde ali diye biri kayıtlı olarak düşün bu değişken oluyor,
ali ye tıkladığında içindeki numara gözükecek bu referans oluyor.
aradığında ali ile konuştuğunda bu değer oluyor.
 */

void main() {

  final liste = [
    {'a', 'b'},
    {'c', 'd'},
    {'e', 'f'},
  ];

  print(liste);

  final ikinci = liste[1]; // liste den ikinciyi referans aldık

  ikinci.remove('c'); // referansta değişiklik yaptık ve bu hem ikinci hem liste değişkeninde değişti

  print(ikinci);
  print(liste);

 // not : değişkenlerin referans tuttuğunu unutursak yanılabiliriz.
 /*
  yukarıdaki örnekte çok sık yapılan bir hatadır.
  sen sadece ikinciyi değiştirdiğini sanarsın,
  fakat orijinal listdeki elemanıda değiştirirsin.
  */

  var liste1 = [1, 2, 3];
  var liste2 = [4, 5, 6];

  print('liste1; $liste1');
  print('liste2 : $liste2');

  liste1 = liste2; //İkisi aynı liste olacak, birinde değişim yaparken diğeride değişecek

  print('= sonrası');
  print('liste1; $liste1');
  print('liste2 : $liste2');

  liste1[0] = 10; //liste1 değiştirdik bakalım liste2 değişecek mi

  print('10 yaptıktan sonra');
  print('liste1; $liste1');
  print('liste2 : $liste2');

  // yukarıda gördüüğün üzere ikiside değişti



  // Immutable: değişmez, mutable: değişebilir

int a = 5;
int b = 5; // a ve b değişkenleri aynı referansa sahipler

  String s = "merhaba"; // immutable değişken

  final s2 = s.replaceFirst('er', 'to');

  print(s); // s değişkeni immutable olduğu için değişmedi
  print(s2); // ".replaceFirst" s değişkenin kopyasını oluşturdu ve değişim yaptı.


  // Immutable : değişkende değer var illüzyonu çalışıyor,
  // Mutable : değişkenimi birisi değiştirmiş ! (referans olduğunu unutursak)


}






