
import 'ogrenci.dart';

void main() {
  print("Module 4 dersine hoşgeldin!!");


  /*
  CLAS'LAR :

        classtan bir kopya nesne oluşturuyoruz. MyClass c = MyClass();

        Nesneye bakan bir referans ile aşağıdaki elemanlara ulaşabiliyoruz.

        Değişken (field): int a;

                Yaratılan her bir nesenin içinde ayrı bir tane bulunur.

                Nesnenin ömrü boyunca yaşar ve kendi değerini hatırlar.

        Fonksiyon (method): void hello(){print(a);}
              yarartılan nesnenin içindeki elemanlara ulaşılabilir.

   */


  ogrenci O1 = ogrenci("Özge", 22);
  ogrenci O2 = ogrenci("Berke", 22);
  
  // class ogrenci.dart kısmında onun ile birlikte bak.

 /*
  O1._yas +=1;  bu özelliği private yaptığımız için class dışında çalışmıyor.
  */

  O1.MerhabaDe();
  O2.MerhabaDe();

O2.DogumGununuKutla();


  O1.MerhabaDe();
  O2.MerhabaDe();


  /*
  Private and Encapsulation

      Classtaki bazı değişkenlerin dışarıdan kullanılmasını istemeyiz.

      Class'ın rolünü de methodları ile belirleriz

      iç işlerine dışarıdan karışmayız.


          Dartta direkt private özelliği yok,

          private özelliğini kullanmak için classı yeni sayfaya al ve
          kullanılmasını iştemediğin methodun adının önüne "_" alt çizgi koy.

              İlk sayfa oluşturduğunda hata verecek bunun içinde ;
                  hatanın üzerine gelip "import library" tıklayacaksın.
   */


  /*
  Nullable ve Non-nullable field'lar :

      Nullable field değer vermezsek null olur. int? a; //(null)
      Non-nullable mutlaka bir değer vermek gerekir.
      tanımlarken int a = 5;

      constructor ile Myclass(this.a); / MyClass() : a = 5;

      veya late yapabiliriz late int a;

      ilk değer atamadan önce kullanırsak hata oluşur.
   */

  O1.okulu = "Yıldız Teknik Üniversitesi";
  O2.okulu = "Yıldız Teknik Üniversitesi";

  O1.adres = "İstanbul";
  O2.adres = "İzmir";


  O1.MerhabaDe();
  O2.MerhabaDe();



}
