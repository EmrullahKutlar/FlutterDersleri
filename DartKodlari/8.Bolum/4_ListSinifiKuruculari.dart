void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci emrullah = Ogrenci(1, "Emrullah", 7);
  Person ali = Ogrenci(2, "Ali", 7);
  var yunus = Person(4, "Yunus");
  var hasan = Ogrenci(5, "Hasan", 6);
  List<Person> tumOgrenciler = [emre, emrullah, ali, yunus, hasan];
  var liste1 = List.filled(5, 0);
  var liste2 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var liste3 = List<Person>.from(tumOgrenciler); //hepsini alıyor
  var liste4 = List<Ogrenci>.from(
      tumOgrenciler.whereType<Ogrenci>()); //type'ı ogrenci olanları alıyor

  var liste5 = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
  //type'ı ogrenci olanları alıyor
  print(liste3);

  var listGenerate = List<int>.generate(5, (index) => index + 2);
  //indexe 2 ekleyerek 5 elemanlı bir dizi oluştur demek
  print(listGenerate);
  var listGenerate2 = List<Ogrenci>.generate(
      6, (index) => Ogrenci(index, "$index", (index * 2)));
  print(listGenerate2);

  var degistirelemez = List.unmodifiable([0, 1, 2]);
  //değiştirilemeyen dizi. Eleman eklenip çıkartılamaz.
}

class Person {
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);
  @override
  String toString() {
    // TODO: implement toString
    return "id:$id ve isim:$isim";
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
    return "id:$id ve isim:$isim ve alinan ders sayisi:$alinanDersSayisi";
  }
}
