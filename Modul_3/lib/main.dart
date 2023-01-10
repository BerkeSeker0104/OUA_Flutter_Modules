

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

// Class

/*
Map ==> içerik kesin değil, türler yok

Class ==> içerik değişkenlerle temsil ediliyor, türler var
 */
void main () {

  // Aşağıda öğrencinin adı, soyadı, yaşı, cinsiyeti, sınav notu olan bir fonksiyon yazalım
  // bu fonksiyonu map ile yapıcaz.

  final ogrenci = {
    "adı" : "Berke",
    "soyadı" : "Şeker",
    "yasi" : 22,
    "cinsiyeti" : "erkek",
    "sınav notu" : "70",
  };

print(ogrenci);

/*
 map ile yaptığımız için ikinci bir öğrenci bilgilerini doğru girmek bizim insiyatifimize kalmış,
 şimdi class ile yapalım bakalım ne olacak
 */



  final berke = Ogrenci("berke", "şeker", 22, "erkek", 70);
  final ozge = Ogrenci("Özge", "Ersoy", 21, "kadın", 100);

  print(berke.adi);
  print(ozge); // bunu override etmediğimden dolayı çalıştırınca Instance of 'Ogrenci' bu yazacak
              // class içinde override yapalım
              // override yaptıktan sonra   "Özge Ersoy 21 kadın 100" şeklinde yazacak.

  if (berke.ortalamininUstendiMi(80)) {
    print("Bravo berke!");
  }
  if (ozge.ortalamininUstendiMi(80)){
    print("Bravo özge!");
  }
  
  print(Ogrenci.okulAdi); // bunu class içinde static ile global fonksiyon olduğu için çalıştı.
}


class Ogrenci {

  static String okulAdi = "Yıldız Teknik Üniversitesi";


  String adi;
  String soyadi;
  int yasi;
  String cinsiyeti;
  int notu;

  Ogrenci(this.adi, this.soyadi, this.yasi, this.cinsiyeti, this.notu);

  bool ortalamininUstendiMi (int ortalama) {
    return notu > ortalama;
  }

  @override
  String toString() {
    return "$adi $soyadi $yasi $cinsiyeti $notu";
  }
}
/*
   class da özel fonksiyonlar kullanıyoruz, bunun için "alt + insert" tuşuna bas,
   constructor tıkla hepsini seç ve oluştur.

   Not : class'ı main dart alanında oluşturursan class hata verir.
   */

/*
Class : static field and method
global değişken ve fonksiyon

class içinde static şeklinde tanımladığımız elemanlar sanki global fonksiyonlar gibi çalışıyor.
 */

  // NULL SAFETY


/*
Nul referans :  null ==> böyle bir şey yok demektir

Non-Nullable : mutlaka bir nesneye bakan referans vardır.(String.s;)   değişken ==> değer

Nullable : nesneye bakmama opsiyonu var. (String? s;)  değişken ==> değer ya da değişken ==> X null

------------------------------------------------------------------------------

Neden Non-Nullable ?

çalışma anında oluşabilecek bir çok hatayı önler.
Gereksiz kontrolleri ekarte eder, app çok daha verimli olur.

------------------------------------------------------------------------------

Null'dan kurtulamaz mıyız ?

Kullandığımız kütüphaneler bazen Null'ı kullanır.
Örn.map[key] bir nullable tür döner.
------------------------------------------------------------------------------
Nullable Referanslar ile başa çıkmak :

1) Null assertion : nonNulableRef = nullableRef! (Bize gelen nullable referansın
sonuna ünlem işareti koyuyoruz, diyoruz ki evet bu bir nullable bir referans ama
ben biliyorum bu bunu, bu bir null değil.Dolayısıyla lütfen bunu bana
non-nullable gibi kullanmama izin ver" diyoruz.)

2) Type Promotion :
ıf (nullableRef!= null) nonNullableRef = nullableRef (Eğer null mı diye kontrol
ediyoruz referansımız (değişkenimiz) ve de eğer null değilse, o if'in null
olmayan kısmına geldiğimizde artık bu değişkenimize non-nullable muamelesi
yapıyor Dart. Yani burada ünlem koymama gerek kalmadan non-nullable olarak
kullanabiliyorum artık. Bu çok güzel bir şey, non-nullable olarak kullanmamıza
izin veriyor aslında nullable olan değeri.)

3) Null-aware operatörler :

nullableRef?.field
nullable??nonNullableRef
nullable??=nonNullableRef
(Bir nullable referans elimize geldiğinde ?. diyerek "Eğer bu null ise bu da
null olsun komple. Eğer bu null değilse, o zaman onun içindeki field'a bakalım"
 demiş oluyoruz. Eğer bu null ise, soru işaretsiz .field dersek bir hata oluyor.
  Program hata veriyor. Fakat ?.field diyerek "eğer yoksa komple null olsun"
  demiş oluyoruz. Nullable bir değişkenin sonuna ?? koyup başka bir değer
  verdiğimizde, eğer bu soldaki null ise sağdakini alıyor bu expression değer
   olarak eğer bu soldaki null değilse, soldakini alıyor expression değer
   olarak. Yani bu null ise şunu al anlamında. Bunun yanına bir de =
   koyduğumuzda eğer soldaki değişken null ise, sağdakini soldakinin içine
   atıyor. Bir assignment yapıyor. Bu da faydalı bir operatör.)
 */

void main () {
  print("Merhaba!");

  String s;

  // print(s); bu kod hata verecektir çünkü nonnullable olduğu için bir şey göstermeli.

  s ="ali"; // s' e bir şey gösterdik artık print(s); çalışacak.
  print(s);


  String? sn;

  print(sn); // bunu printlediğinde null alacaksın
 // print(sn.length);  // bunu yaptığında hata alacaksın ve kodun çalışmayacak
  
 // print(sn!.length);  Bunu yaptığında kodun çalışacak fakat  hata verecek

  // "sn" değer atarsak ünlem işareti gereksiz kalıyor.

  sn = "ali";
  print(sn!.length); // ünleme ihtiyacı olmadığını söylüyor burada bu null değil dedi.

  /*
  Ayşe'nin internetten bulduğu bir kodun içinde değişken tanımlalarında
  kullanılan class isimlerinin yanında soru işaretleri, değişkenler
  kullanılırken de isimlerinin yanlarında ünlem işaretleri görüyor.
  Ayşe bunların ne anlama geldiğini anlamaya çalışıyor. Bu konuda doğru
  olan seçenekleri seçerek ona yardımcı olur musunuz?

I. pubspec.yaml dosyasında environment bölümünde sdk versiyonunun minimum değeri
 2.12.0'dan aşağıda ise soru ve ünlem işaretlerini bu şekilde kullanamayız.

II.Bu işaretlerin kullanıldığı bir projede bir Dart dosyasının başına şunu
yazarsak bu işaretleri kullanamayız: // @dart=2.9

IV. Değişken kullanımında değişkenden sonra gelen ünlem işareti, o değişkenin
null olmadığından emin olduğumuzu belirterek onu null olmayan türe çevirmemizi sağlar.

VI.String ile String? birbirinden farklı iki veri türüdür.
   */


}
  
// HATA YAKALAMA

/*
Hata (exception) :

try {

kod satırları;
kod satırları;

hata oluşturan satır;
hatadan dolayı çalışmayan satırlar;
hatadan dolayı çalışmayan satırlar;

} catch(e){
      hataya çare olan satırlar:
 }






HATA YAKALAMA :

try {

}on Exception catch (e) {
    //potansiyel hata, hatanın çaresi, türü ve içeriği, kullanılıyor.

}


try {

}on Exception {
    //potansiyel hata, sadece türü ve içeriği, kullanılıyor.

}


try {

} catch (e) {
    //potansiyel hata, her türlü hata,  içeriği kullanılabilir.

}


*/

void main () {

  print("Merhaba!");

  try {
    String? s=null;
    print(s!.length);
    double.parse("Bu bir double değil");
  } on FormatException catch (e) {
    print("Format exception oldu!");
  } catch (e){
    print("başka bir hata oldu!");
  }
  
 

/*
Hatanın Yükselmesi : Hatanın olduğu fonskiyondan itibaren dışarı doğru hata
yükselir.

ilk uygun try bloğu ile hata yakalanır.
 */



/*
finally :
 try{

}on Exception{

} finally {
        // hata olsada olmasada, yakalansada yakalanmasada çalışır.
}
 */

  returnEdecek();
}

void returnEdecek() {
  try {
    print('>main');
    return;  // return ekleyince FINALLY den sonrası çalışmıcak.
    hataliKoduCagiran();
    print('<main');
  } on FormatException catch (e) {
    print('format exception oldu!');
    rethrow;
  } catch (e) {
    print('başka bir hata oldu!');
    print(e);
  } finally {
    print('FINALLY!');
  }
  print('FINALLY\'DEN SONRA!');
}

void hataliKoduCagiran() {
  print('>hataliKoduCagiran');
  hataliKod();
  print('<hataliKoduCagiran');
}

void hataliKod() {
  print('>hataliKod');
  throw new Exception('HATA VAR!');
  double.parse("bu bir double değil");
  String? s = null;
  print(s!.length);
  print('<hataliKod');


/*
throw : kendimizin "bir sorun var!" diyerek hata yaratmamız

if (olmaması gereken bir durum mu oldu ? ) {
throw Exception ('Böyle olmamalıydı');
}
 */



}





