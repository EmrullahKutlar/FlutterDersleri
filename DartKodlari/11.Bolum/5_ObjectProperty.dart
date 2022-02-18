import 'dart:math';

/**
 * Sınıflarımızı oluşturuken olusturduğumuz değişkenler(property) için de null safety
 özellikleri geçerlidir. Bu özellikleri ilk defa uyguladığımızda karışık gelebilir.
 * Çünkü bu propertylerin getter ve setter metotları doğrudan veya dolaylı olarak vardır.
 Bundan dolayı da bu değişkenler aynı scope içinde farklı değerlerler üretebilirler. Siz bu
 yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz.
 * bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken
 üzerinden kontrolleri yapmanızdır*/
class RastgeleMetinUretici {
  String? deger() {
    if (Random().nextBool()) {
      return 'string ifade';
    } else
      return null;
  }
}

main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.deger();
  if (sonuc == null) {
    print("Null deger oldu");
  } else {
    metniYazdir(sonuc);
  }
}

void metniYazdir(ifade) {
  print(ifade);
}
