/*
Fonksiyon kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı,
hata bulması kolay uygulamalar geliştirebiliriz.
Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları
methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.
Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda
değiliz.(Belirtilmesi önerilir)
*/

import 'dart:io';

void main(List<String> args) {
  cevreyiHesapla();
/***************************************************************/
  print("Alani hesaplanacak dikdörtgenin en ve boyunu giriniz");
  int? en = int.parse(stdin.readLineSync()!),
      boy = int.parse(stdin.readLineSync()!);
  alanHesapla(en, boy);
/***************************************************************/
//bu ve üstteki fonksiyon aynı fakat biri sonucu bize tekrar döndürüyor

  int alan = alanHesapla2(en, boy);
  print("2. alan hesaplama fonksiyonu çalıştı. Sonuç= $alan");
  /***************************************************************/
  print("dikdörtgenin yuksekligini giriniz");
  int? yukseklik = int.parse(stdin.readLineSync()!);
  int hacim = hacimHesapla(en, boy, yukseklik);
  print("Dikdörtgenin hacmi = $hacim");
/***************************************************************/
}

// parametresiz fonksiyon. Geriye bir değer döndürmediği için başına void yazdık
// yazmasakta olur fakat yazsak daha iyi olur
void cevreyiHesapla() {
  print("Cevresi hesaplanacak dikdörtgenin en ve boyunu giriniz");
  int? en = int.parse(stdin.readLineSync()!),
      boy = int.parse(stdin.readLineSync()!);
  int cevre = (en + boy) * 2;
  print("Dikdörtgenin cevresi = $cevre");
}

//parametreli fonksiyon. Geriye bir değer döndürmediği için başına void yazdık
// yazmasakta olur fakat yazsak daha iyi olur
void alanHesapla(int sayi1, int sayi2) {
  print("Dikdörtgenin Alanı = ${sayi1 * sayi2}");
}

//parametreli ve returnlu fonksiyon. Geriye bir değer döndürdüğü için başına
//hangi değeri dödürüyorsa onu yazdık yazmasakta olur fakat yazsak daha iyi olur
int alanHesapla2(int sayi1, int sayi2) {
  return sayi1 * sayi2;
  //alanHesapla2 fonksiyonun çağırıldığı yere sayıların çarpımını gönderdi
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}
