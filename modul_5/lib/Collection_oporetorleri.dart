// COLLECTION OPERATÖRLERİ

/*
SPREAD OPERATÖRÜ (...)

Not: Program dillerinde operatör, tek başlarına anlamı olmayan ancak programın
işleyişine katkıda bulunan karakter ya da karakter topluluklarıdır.

Bir list'i/ Map'i/ Set'i diğerinin içine açar.

final li = [1, 2, 3];
print(0, ...li, 4, 5); // print(0, 1, 2, 3, 4, 5); ile aynı şeydir

final mi = {1: 10, 2: 20, 3: 30};
print({1: 100, 2:200, ...mi});



COLLECTİON if ve for

bir list/ set/ map yaratırken elemanları
    ekleme ve eklememe kararını if fonksiyonu ile yapıyoruz.

    tekrar tekrar ekleme kararını ise for fonksiyonu ile yapıyoruz.

if ve for 'dan sonra {} kullanmıyoruz, küme parantezi kullandığımız da set oluyor
küme parantesi kullanmadan list içinde kullanabiliyoruz.


[

0,
if(biri ekle)
  1,
for(var i = 2; i<; ++i)
  i,

  5,
  ]
  // 0,1,2,3,4,5


SPREAD VE if/for kombinasyonu

[
0,
if(ilkUcuEkle)
      ...[1,2,3],
for (var i = 4; i<6; ++i)
      ...[i, i*10],

  6,
  ]

// [1,2,3,4,40,5,50,6]
 */
void main () {
  print("Yeni dersimize hoş geldin");

  final List<int> l = [1, 2, 3];
  final Set<int> s = {1, 2, 3};
  final Map<int, int> m = {1: 10, 2:20, 3: 30};

  print([10, 20, 30, ...l]);
  print({1, ...s, 4, 5, 6});
  print({1, s, 4, 5, 6}); // Burada spread kullanmadan yazarsak içine direkt set ekleniyor.


// list for if
  print([
    1,
    2,
    if (1 ==1)
      3,
    for (int i =4; i<8; ++i)
    i
  ]);

// map for if
  print({
    1: 10,
    2: 20,
    if (1 == 1)
      3: 30,
    for (int i = 4; i < 8; ++i)
      i: i*10,
  });



// list spread ve if for

  print([
    1,
    2,
    if (1 ==1)
      ...[3,4,5],
    for (int i =4; i<8; ++i)
      i
  ]);

}