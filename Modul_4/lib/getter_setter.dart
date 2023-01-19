// Getter and Setter



import 'package:modul_4/getter_setter.dart';

void main () {
  print("Yeni Dersimize hoş geldin!");


/*
Field'lar : c.field
        Direkt olarak bir değişkene ulaşıyoruz.
        Herhangi bir kod çalışmıyor.

Methodlar : c.method()
        içine yazdığımız kod çalışıyor.

ikisinin karışımı mümkün : c.property
        Hem değişken gibi okuyup yazabiliyoruz.
        Hem de içine yazdığımız kodlar çalışıyor.


GETTER

int getValue() => 4; (bu fonksiyon)  print(o.getValue());

int get value => 4; (bu property)  print(o.value);

property'de get keyword oluyor, value ise property adı oluyor.


SETTER

void setValue(int v) => use(v);       o.setValue(5);

set value(int v) => use(v)            o.value(5);
 */

final ogrenci o1= ogrenci("ahmet", 13);

o1.MerhabaDe();
print(o1.yas);

print(o1.sinif);

o1.Sinif = 1;
print(o1.yas); //setter ile yaşı değiştirmiş olduk.


}

class ogrenci {
  final String ad;
  int yas;

  int get sinif {        // bu property
   print("Sınıf hesaplanıyor : ");
   
    return yas - 5; 
  }

   set Sinif(int s) { //setter
    yas = s  + 5 ;
  }

  ogrenci(this.ad, this.yas);


  void MerhabaDe ()  {
    print("Merhaba ben $ad, $yas yaşındayım.");
  }

}



