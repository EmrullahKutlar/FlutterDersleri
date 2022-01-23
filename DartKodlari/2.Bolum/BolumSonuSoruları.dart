/*
SORIU 1: 3 tane double degişken olusturup bunların ortalamasını yazdiran program yazıniz
SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programa yazınız.
SORU 3 : vize ve final notlarani alıp dersi geçip geçnedigini bulan programi yazınız
(gecne notu alt değeri - 50, vizenin %40 finalin %60 alinır.)
SURU 4: Kendi adınızı ekrana 5 kere yazdıran uygulama yapınız tüm döngüleri kullanın
SDRU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız.
SDRU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.*/
void main(List<String> args) {
  print("Soru 1 Cevap:");
  double a = 1.50;
  double b = 2.71;
  double c = 1.83;

  print("Sayıların ortalaması = ${(a + b + c) / 3.toDouble()}");
//---------------------------------------------------------

  print(" \nSoru 2 cevap:");

  int kenar1 = 4;
  int kenar2 = 3;
  int kenar3 = 5;
  if ((kenar1 == kenar2 && kenar1 != kenar3) ||
      (kenar1 == kenar3 && kenar1 != kenar2) ||
      (kenar3 == kenar2) && kenar1 != kenar3) {
    print("bu bir ikizkenar üçgendir");
  } else if (kenar3 == kenar1 && kenar3 == kenar2) {
    print("bu bir eşkenar üçgendir");
  } else {
    print("Bu bir çeşitkenar üçgendir.");
  }
//---------------------------------------------------------
  print(" \nSoru 3 cevap:");
  double vizeNotu = 45.5;
  double finalNotu = 65.5;
  if (((vizeNotu * 40) / 100 + (finalNotu * 60) / 100).toInt() >= 50) {
    print("Tebrikler Geçtiniz!");
  } else {
    print("Malesef dersten kaldınız.");
  }
//---------------------------------------------------------

  print(" \nSoru 4 cevap:");
  var i = 0;
  for (i = 0; i < 5; i++) {
    print("Emrullah ${i + 1}");
  }
  i = 0;
  print("---------------------------");
  while (i < 5) {
    print("Emrullah ${i + 1}");
    i++;
  }
  print("---------------------------");

  i = 0;
  do {
    print("Emrullah ${i + 1}");
    i++;
  } while (i < 5);

  print("\nSoru 5 cevap:");
  var k;
  for (k = 1; k <= 100; k++) {
    if (k % 15 == 0) {
      print("15' tam bölünen sayı $k'dır ve karesi ${k * k}'dır");
    }
  }

  print("\nSoru 6 cevap:");
  var hesaplanacakSayi = 4;
  var faktoriyeli = 1;

  for (int i = 1; 1 <= hesaplanacakSayi; i++) {
    faktoriyeli = faktoriyeli * i;
    hesaplanacakSayi--;
  }
  print("Girilen sayının faktoriyeli = $faktoriyeli");
}
