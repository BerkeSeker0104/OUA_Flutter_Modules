// GENERICS - class'lara type parametresi vermek

/*
Generic
class Myclass<T>{
    T val;

}

MyClass<int> m  = MyClass<int>();

Generic kısıtlamalı

class Myclass<T extends num>{
    T val;

}

MyClass<int> m  = MyClass<int>();

 */

void main () {

  print("Yeni dersimize hoş geldinn!");

  final m = MyClass<String>("Metin");

  print(m.val);

  m.Kullan();
}

class MyClass<T extends String> {
  T val;

  MyClass(this.val);

  void Kullan() {
    print(val.length);
  }
}

/*
Generics özelliğini kullanarak bir classı parametrik yapabiliyoruz. List buna
güzel bir örnek. İçine uyumsuz bir veri konmasını engellediği gibi, veriyi
çıkartırken de türünü bilerek çıkarttığı için hata yapma ihtimalimizi azaltıyor.
 */

