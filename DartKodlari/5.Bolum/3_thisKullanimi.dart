void main(List<String> args) {
  var bmw = Araba(2019, "BMW", true);
  bmw.bilgileriSoyle();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /* Araba(int modelYili, String marka, bool otomatikMi) {
    print("Kurucu Method tetiklendi");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
    /*
    *this ile yazilan yukarıda ilk tanımladıklarımız sonrakiler ise parametreyle gelenler
    
    *this'i parametredeki değişkenlerin ismi ile yukarıda genel olarak tanımladığımız 
    değişkenlerin isimleri aynı ise kullanma ihtiyaci duyuyoruz.Eğer parametredeki
    degişkenlerin ismi farklı olsaydı this'i kullanmadan birbirlerine atayabilirdik
    */
    //yada hiç bunlarla uğraşmayıp aşağıdaki gibi tanımlayabiliriz


  }*/
  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu Method tetiklendi");
    //bu daha iyi
  }

  void bilgileriSoyle() {
    print(
        "Arabanın modelyılı $modelYili, markası $marka, otomatik mi: $otomatikMi");
  }

  void yasHesapla() {
    print("Arabanın yası: ${2021 - modelYili!}");
  }
}
