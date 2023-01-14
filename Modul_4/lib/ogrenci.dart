class ogrenci{
  String ad;
  int _yas;

  String? okulu;
  late String adres;



  ogrenci(this.ad, this._yas);


  void MerhabaDe () {
    print("Merhaba benim adım  $ad, yaşım $_yas,  ");
    print("Okulum: $okulu");
    print("adresim: $adres");

  }

  void DogumGununuKutla() { // bu fonksiyonu çağırdığımızda yaşımız bir artacak.
    _yas +=1;
  }



}
