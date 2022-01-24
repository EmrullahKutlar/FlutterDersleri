import 'dart:io';

void main(List<String> args) {
 /* print("Toplanacak sayilari giriniz");
  int sayi1 = int.parse(stdin.readLineSync()!),
      sayi2 = int.parse(stdin.readLineSync()!);
  print("Girilen Sayıların Toplamı= ${sayiTopla(sayi1, sayi2)}");

  print("Farkları alınacak sayilari giriniz");
  int sayi3 = int.parse(stdin.readLineSync()!),
      sayi4 = int.parse(stdin.readLineSync()!);
  print("Girilen Sayıların Farkı= ${sayiCikar(sayi3, sayi4)}");

  print("Çarpılacak sayilari giriniz");
  int sayi5 = int.parse(stdin.readLineSync()!),
      sayi6 = int.parse(stdin.readLineSync()!);
  print("Girilen Sayıların Farkı= ${sayiCarp(sayi5, sayi6)}");*/

  print("Karşılaştırılacak sayilari giriniz");
  int sayi7 = int.parse(stdin.readLineSync()!),
      sayi8 = int.parse(stdin.readLineSync()!);
  print("Girilen Sayılardan en büyüğü= ${buyukOlaniBul(sayi7, sayi8)}");
}

int sayiTopla(int sayi1, int sayi2) {
  return sayi1 + sayi2;
}

int sayiCikar(int sayi1, int sayi2) {
  return sayi1 - sayi2;
}

//Kısaltılmış fonskiyon sadece tek satırlık bir kod içeren fonksiyonlarda kullanılır
int sayiCarp(int sayi1, int sayi2) => sayi1 * sayi2;

/*  int buyukOlaniBul(int sayi1, int sayi2) {
  if (sayi1 > sayi2) {
    return sayi1;
  } else {
    return sayi2;
  }
}   */

//yukarıdaki fonsiyonun kısaltılmışı
int buyukOlaniBul(int sayi1, int sayi2) => sayi1 > sayi2 ? sayi1 : sayi2;
