void main(List<String> args) {
  Kisi emrullah = Kisi("Emrullah", 22);
  emrullah.kendiniTanit();
  Calisan mert = Calisan("Mert", 23, 4125);
  mert.kendiniTanit();
}

class Kisi {
  String isim = "";
  int yas = 0;
  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  double maas;
  Calisan(String isim, int yas, this.maas) : super(isim, yas);

  @override
  void kendiniTanit() {
    // TODO: implement kendiniTanit
    super.kendiniTanit();
    print("Maaşımda $maas");
  }
}
