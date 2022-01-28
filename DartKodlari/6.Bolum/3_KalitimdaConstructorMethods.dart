void main(List<String> args) {
  //Asker emrullah = Asker("Emrullah",22);
  Er emrulah = Er("Emrullah", 22);
  emrulah.selamla();
  emrulah.memleketDegistir("Kütahya");
  emrulah.selamla();
}

class Asker {
  String ad = "Emrullah";
  int yas = 18;
  String memleket = "İstanbul";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }
  void selamla() {
    print("Merhaba benim adım $ad yaşım $yas memleketim:$memleket");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    //burada üst sınıfın constructoruna veri gönderiyoruz
    print("Er sınıfının kurucusu çalıştı");
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket; //üst sınıftaki bir değişkene erişiyoruz
    //super ust sınıfa gitmeyi sağlıyor
  }
}
