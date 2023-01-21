// Collection'lar
//List, Map, Set, Iterable ve Loop'lar

/*
[1, 2, 3] ==> List
{1, 2, 3} ==> Set
{1: 10, 2: 20, 3: 30} ==> Map

Iterable
  üzerinde adım adım ilerlenerek eleman çekebilen her şey
      örnek bir class iterable ise ondan adım adım eleman çekebiliyoruz.

for (final e in iterable){}
iterable.first
iterable.last
iterable.length
iterable.contains(e)


Iterator

   iterable'dan alınıp adım adım ilerlemeyi sağlayan nesnelere denir
   bir nesneden öğeleri birer birer aLmak istediğimizde kullanılan arabirimdir

            var i = iterable.iterator;
            while (i.moveNext()); {
                print (i.current);
            }


loop : bir kod bloğunu veya belirtilen koşulla eşleşene kadar tekrar tekrar
       çalıştırmak için kullanılır.

list ile loop

for (final e in list){
      print(e);
}

set ile loop

for (final e in list){
      print(e);
}

map ile loop

    map iterable olmadığı için direkt loop yok
    fakat "entries, keys, values" döngülerini yapabilirsin

  for (final k in m.entries){
    print(k);
  }


 */



void main() {
  print("Yeni dersimize hoş geldin !");

  final List<int> l = [1, 2, 3];
  final Set<int> s = {1, 2, 3};
  final Map<int, int> m = {1: 10, 2:20, 3: 30};

  final Iterable<int> li = l;
  final Iterable<int> si = s;
  //final Iterable<int> mi = m; map iterable olmadığı için bu kod hatalıdır.


  for (final e in li) { //for döngüsü
    print(e);
  }

  print(li.first);
  print(li.length);

  print(li.contains(4)); // list de 4 var mı?


  for (final k in m.entries){
    print(k);
  }



}