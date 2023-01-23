// COLLECTION METHODLARI


/*
TEK ELEMAN BULMA

//tek bir eleman (örn.2)

iterable.first
iterable.last
iterable.firstWhere((e) => e<3)
yukarıdaki firstWhere 'e bir fonksiyon veriyoruz ve bu elemanları deneyerek doğru
ya da yanlış diyor. fonksiyonun ilk true dönen elemanına gelince duruyor diğer
elemanlara bakmıyor

TÜM ELEMANLARI İLGİLENDİREN SORU

// true veya false

iterable.any((e) => e<3) // hiç 3'den küçük eleman var mı diye soruyor
                         // eğer var ise true oluyor yok ise false oluyor.

iterable.every((e) => e<3) // bütün elemanlar 3'den küçük ise true
                           // değil ise false oluyor

iterable.fold(0. (a, b) => a+b ) // bütün elemanların toplamını alıyoruz.

FİLTRELEYEREK ALT KÜMESİNE ALMA

// aynı türden, daha az elemanlı yeni bir iterable yaratır.

iterable.where((e) => e<3)

HER ELEMANI DÖNÜŞTÜRME

// yeni türden, aynı boyda bir iterable

iterable.map((e) => '$e elemanı')
 */
void main () {
  print("Yeni dersimize hoşgeldin !");

  final iterable = [1, 2, 3, 4, 5, 6, 7, 8, 0];
  
  print(iterable);
  print(iterable.first);
  print(iterable.last);
  print(iterable.firstWhere((element) => element % 4 ==0));
  // 25 satırdaki kodumuzda ilk dörde bölümden kalan sıfır olan elemanı ekrana yazar.

  if (iterable.any((element) => element %11 == 12)) {
    print("Elemanın 11 ile bölümünden kalan 12'dir");
  } else {
    print("Elemanın 11 ile bölümünden kalan 12 değildir.");
  }
  
  //elemanlarımızın toplamını veren kod :
  print(iterable.fold<int>(0, (previousValue, element) => previousValue + element));

  print(iterable);

  print(iterable.where((element) => element>4));


  // int türünden string türüne çevirdi
  print(iterable.map((e) => "$e sayısı" ));
}