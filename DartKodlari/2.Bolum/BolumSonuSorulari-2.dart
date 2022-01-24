/* örnek 1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı
yapın.
Örnek 2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın. */

import 'dart:io';

void main(List<String> args) {
  //Soru 1'in Cevabı

  print("İlk notunuzu girin");
  int? not1 = int.parse(stdin.readLineSync()!);
  print("İkinci notunuzu girin");
  int? not2 = int.parse(stdin.readLineSync()!);
  print("Notlarınızın ortlaması = ${(not1 + not2) / 2}");
  print("----------------------------");

//Soru 2'nin cebabı

  print("KDV li fiyatı hesaplanacak ürünün fiyatını giriniz");
  int? urun = int.parse(stdin.readLineSync()!);
  print("Ürünün KDV eklenmiş fiyatı = ${((urun * 18) / 100) + urun} TL");
}
