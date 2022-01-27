import '1_ClassAndObject.dart';

void main(List<String> args) {
  Ogrenci emre = Ogrenci(1, "Emre");
  Ogrenci hasan = Ogrenci.idsiz("Hasan");
  var ayse = Ogrenci.factoryKurucusu(-9, "Ayse");
  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";
  Ogrenci(this.id, this.isim) {
    print("Default kurucu Çalıştı");
  }
  Ogrenci.idsiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı ");
  }
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }

  /*kurucu methodlarda return kullanamazken factory ile oluşturduğumuz
  kurucu metodlarda returnu kullanabiliriz ve ozel returnler dondurebiliriz*/
}
