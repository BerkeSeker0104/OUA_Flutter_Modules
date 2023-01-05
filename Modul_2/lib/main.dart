// import 'package:flutter/material.dart';

void main() {

// Degiskenler ve Fonksiyonlar

// Expression (ifade): herhangi bir şekilde üretilen değer.

// Statment (Komut): bilgisayara verilen bir emir, komut satırı

//  print("main calisti"); --->  bunun hepsi komut satırıdır.

// yukarıdaki print içindeki "main calisti" kısmı expression.

  print("main calisti");
  print("a".isNotEmpty);
  print(1.isEven);
  var MainTekCal = "main" + "tekrar" + "çalıştı";
  print(MainTekCal);

// type'lar (Veri Türleri) ==> int, string ...

// Değişkenler ==> type bellir bir değer gösteren ok (referans)
// Refactor ==> kodu IDE yardımıyla değiştirme

/* Fonksiyonlar ==> bir işlemi tekrarlanabilir bir şekilde ayrdı kod parçasında gerçekleştirmek için

Girdiler: parametreler (parameters),
Çıktı: Dönülen değer (return value)
*/

int index = findAr(MainTekCal);
print(index);


}



int findAr(String MainTekCal) {
  var index = MainTekCal.indexOf("ar");
  return index;
}



// Fonskiyonlar

void main () {
  print("main çalıştı");

  var konu = "Flutter" ;
  var eylem = "öğreniyorum";

  /* var hepsi = konu + ' ' + eylem;
  print(hepsi); */

  /* Fonksiyon dönüş türleri ==>
  dönüş türüne uygun veri dönmeliyiz,
  veri dönmeyi unutmamalıyız,
  dönülecek bir şey yoksa void kullanabiliriz.
   */


 var f = konuVeEylem; // "f" fonksiyonumuzun türünü öğrenmek istiyorsan alt+enter yap ve addy type annotation tıkla. böylece türünü görmüş olursun.

String hepsi = f(konu, eylem);
print(hepsi);

}

String  konuVeEylem (String konu, String eylem) {
  print("Konu ve eylemi birleştirecek");
  var hepsi = konu +  " " + eylem;
  return hepsi;
}

/* Parametreler
lokal değişken gibi,
İsimli parametreler,
Opsiyonel parametreler.
 */

// parametreyi süslü parantez içine alırsan isimli parametre haline gelir.

/* Fonksiyon Refaransları

Fonksiyona referans tutan değişken

Typedef ==> Elimizde bir fonksiyon var ve her seferinde bunu uzun uzun yazmak istemiyoruz, bu nedenden typedef ile yeni bir tip ataması yapıyoruz.

isimsiz fonksiyonlar

65 satırdaki gibi  " var f = konuVeEylem; "
 */


// Expression formatı, (parametreler) ==> dönüş değeri, bu şekilde yaparsak fonksiyonumuzda return'a gerek kalmıyor.