/*
1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.

2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın
işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.

3- Her bir elemanında keyleri string, value'leri dynamic map olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele
olabilir).

4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.

5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  soru1();
  soru2();
  soru3();
  soru4();
  soru5();
}

soru1() {
  var sehirler = ["İstanbul", "Gebze", "Sakarya", "Bolu"];
  for (String sehir in sehirler) {
    print(sehir);
  }
}

soru2() {
  Map<String, dynamic> bilesenler = {
    "islemci Cekirdek": 12,
    "Ram": "1x8 Gb",
    "SSD": "128Gb"
  };
  print("${bilesenler}");
}

soru3() {
  Map<String, dynamic> sehirler = {
    "1": {
      "il": "Ankara",
      "plaka": 06,
      "ilçe": 15,
    },
    "2": {
      "il": "İstnabul",
      "plaka": 34,
      "ilçe": 25,
    },
    "3": {
      "il": "Kütahya",
      "plaka": 43,
      "ilçe": 7,
    },
    "4": {
      "il": "İzmir",
      "plaka": 35,
      "ilçe": 20,
    },
  };
  for (var entry in sehirler.entries) {
    print(
        "Listenin ${entry.key}'inde bulunan il ${sehirler[entry.key]["il"]}," +
            "plaka kodu:${sehirler[entry.key]["plaka"]}," +
            " ilçe sayısı: ${sehirler[entry.key]["ilçe"]}\n");
  } // hoca burayi farkli cozmuş ama sonuc aynı
}

soru4() {
  var sayilar1 = List.filled(5, 0);
  var sayilar2 = List.filled(5, 0);
  for (int i = 0; i < 5; i++) {
    sayilar1[i] = Random().nextInt(50);
    sayilar2[i] = Random().nextInt(50);
  }
  var tumSayilar = [...sayilar1, ...sayilar2];
  print(tumSayilar);
  Set sayiKareleri = {};
  for (int i in tumSayilar) {
    int karesi = i * i;
    sayiKareleri.add(karesi);
  }
  print(sayiKareleri);
}

soru5() {
  print("ortlaması alınacak sayıları giriniz");
  var sayilar = [];
  int sayi = 0;
  do {
    sayi = int.parse(stdin.readLineSync()!);
    if (sayi != -1) {
      sayilar.add(sayi);
    }
  } while (sayi != -1);
  int toplam = 0;
  for (int i in sayilar) {
    toplam = toplam + i;
  }
  double ortalama = (toplam / sayilar.length);
  print(ortalama);
}
