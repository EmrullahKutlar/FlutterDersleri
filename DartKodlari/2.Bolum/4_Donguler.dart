void main(List<String> args) {
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) print("$i");
  }
  print("----------------------------------------");
  List isimListesi = ["Emrullah", "Emre", "Hasan"];
  for (String gecici in isimListesi) {
    print("$gecici");
  }
  print("----------------------------------------");

  for (int i = 0; i < isimListesi.length; i++) {
    print("okunan isim = ${isimListesi[i]}");
  }
  print("----------------------------------------");

  int sayac = 0;
  while (sayac < 3) {
    print("Sayac = $sayac");
    sayac++;
  }
  print("----------------------------------------");

  int sayac2 = 0;
  do {
    print("Sayac2 = $sayac2");
    sayac2++;
  } while (sayac2 < 5);

  /*while ve do while arasındaki fark
  
  do while kullanırsak do içerisindeki kodu daha while içerisindeki 
  kontrolü sağlamadan 1 kere çalıştırır. while kontrol yapmadan çalışmaz */
  print("----------------------------------------");

  int sayac3 = 0;
  while (sayac3 < 10) {
    if (sayac3 > 5) {
      break;
    }
    print("Sayac3 = $sayac3");
    sayac3++;
  }
  //break donguyu o anda bitirir
  print("----------------------------------------");

  int sayac4 = 0;
  while (sayac4 < 10) {
    sayac4++;
    if (sayac4 < 5) {
      continue;
    }
    print("sayac4 = $sayac4");
  }
  /* continue dongüyü başa alır alttaki kodlara bakmaz. Burada sayac4 5'ten 
  küçük olduğu için sürekli başa dondu 5 ve 5ten büyük olanları yazdırdı */
  print("----------------------------------------");

  distakiDongu:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2) {
        continue distakiDongu;
      }
      print("$i * $j = ${i * j}");
    }
  }
}
