/*Soru 1
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu
olmalı.Ayrıca cevre ve alanını hesaplayan metotlar olmalı.(Pi sayısı 3, 14 alın)
Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri
tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak
bu ogrencileri saklayın ve bu ogrencileri yazdıran metotu yazın.
*/
import 'dart:math';

import 'BolumSonuSınıflar.dart';

void main(List<String> args) {
  /*CemberDaire daire = CemberDaire(-10);
  daire.alanHesapla();
  daire.cevreHesapla();*/
  Ogrenci ogr = Ogrenci(id: 5, not: 100);
  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());

  ogrenciDoldur(tumOgrenciler);
  print(
      "Tüm öğrencilerin Not ortalaması: ${ogrOrtalamaHesapla(tumOgrenciler)}");
}

void ogrenciDoldur(List<Ogrenci> liste) {
  for (var i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(id: Random().nextInt(100), not: Random().nextInt(100));
  }
  for (Ogrenci oanki in liste) {
    print(oanki);
  }
}

double ogrOrtalamaHesapla(List<Ogrenci> list) {
  int toplam = 0;
  for (Ogrenci item in list) {
    toplam = toplam + item.not;
  }
  var ortalama = toplam / list.length;
  return ortalama;
}
