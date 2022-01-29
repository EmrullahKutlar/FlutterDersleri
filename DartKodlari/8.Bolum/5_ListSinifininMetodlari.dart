void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci emrullah = Ogrenci(1, "Emrullah", 7);
  Person ali = Ogrenci(2, "Ali", 7);
  var yunus = Person(4, "Yunus");
  var hasan = Ogrenci(5, "Hasan", 6);
  List<Person> tumOgrenciler = [emre, emrullah, ali, yunus, hasan, emre, ali];
  var mapItarable = tumOgrenciler.map((Person e) => "Map:${e.isim}");
  print(mapItarable);
  var mapList = tumOgrenciler.map((e) => "${e.isim}").toList();
  print(mapList);
  print(mapList[1]);
  var setList = tumOgrenciler.map((e) => "${e.isim}").toSet();
  print(setList);

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([emre, yunus]);
  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 5);
  print(sonuc);
  Map<int, Person> yeniMap =
      tumOgrenciler.asMap(); //varolan yapıyı Mape çevirir
  print(yeniMap);
  print(yeniMap[0]);
  print(yeniMap[0]!.isim);
  print(tumOgrenciler.contains(emrullah));

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 3);
  print(bulunan);
  //ilk bulsuğunu veriyor

  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else
      return 0;
  });
  //Kucukten buyuge siraliyor eger 1 -1 olsaydi buyukten kucuge olurdu
  print(tumOgrenciler);
}

class Person {
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);
  @override
  String toString() {
    // TODO: implement toString
    return "id:$id ve isim:$isim \n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi)
      : super(
          id,
          isim,
        );
  @override
  String toString() {
    // TODO: implement toString
    return "id:$id ve isim:$isim ve alinan ders sayisi:$alinanDersSayisi \n";
  }
}
