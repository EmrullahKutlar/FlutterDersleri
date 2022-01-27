void main(List<String> args) {
  var citroen = Araba.markasizKurucuMethod(true, 2015);
  citroen.bilgileriSoyle();

  Araba suzuki = Araba.modelYilsizKurucuMethod("Suzuki", true);
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;
  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu Method tetiklendi");
    //bu daha iyi
  }
  Araba.markasizKurucuMethod(this.otomatikMi, this.modelYili);
  Araba.modelYilsizKurucuMethod(this.marka, this.otomatikMi);

  void bilgileriSoyle() {
    print(
        "Arabanın modelyılı $modelYili, markası $marka, otomatik mi: $otomatikMi");
  }

  void yasHesapla() {
    if (modelYili != null) {
      print("$marka arabanın yası: ${2021 - modelYili!}");
    } else {
      print("$marka arabanın model yili girilmemiştir");
    }
  }
}
