/*
SORU1: Parametre olarak bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarak hesaplama yapın.

SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu
ekrana yazdırsın, geriye bir değer döndürmesin.*/
import 'dart:io';

void main(List<String> args) {
   print("İçerisindeki çift sayiların toplamı hesaplanacak sayiyi giriniz.");
  int s1 = int.parse(stdin.readLineSync()!);
  print("$s1 in içerinsindeki çiftlerin toplamı= ${soru1(s1)}");

  print(
      "Alanı hesaplanacak dairenin yarıçapını giriniz. (Pi sayisi opsiyoneldir)");
  int yariCap = int.parse(stdin.readLineSync()!);
  print("Dairenin alanı = ${soru2(yariCap)}");

  print("üçgenin kenar uzunluklarını giriniz.");
  int kenar1 = int.parse(stdin.readLineSync()!),
      kenar2 = int.parse(stdin.readLineSync()!),
      kenar3 = int.parse(stdin.readLineSync()!);
  soru3(kenar1: kenar1, kenar2: kenar2, kenar3: kenar3);
}

int soru1(int s1) {
  var sonuc = 0;
  for (int i = 0; i <= s1; i++) {
    if (i % 2 == 0) {
      sonuc = sonuc + i;
    }
  }
  if (sonuc != 0) {
    return sonuc;
  } else {
    return s1;
  }
}

double soru2(int yc, [double pi = 3.14]) {
  return yc * yc * pi;
}

void soru3({int kenar1 = 0, int kenar2 = 0, int kenar3 = 0}) {
  if ((kenar1 == kenar2 && kenar1 != kenar3) ||
      (kenar1 == kenar3 && kenar1 != kenar2) ||
      (kenar3 == kenar2) && kenar1 != kenar3) {
    print("bu bir ikizkenar üçgendir");
  } else if (kenar3 == kenar1 && kenar3 == kenar2) {
    print("bu bir eşkenar üçgendir");
  } else {
    print("Bu bir çeşitkenar üçgendir.");
  }
}
