/**
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez, abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 * */
void main(List<String> args) {
  Sekil kare = Kare(5);
  print(kare.alanHesapla());
  print(kare.cevreHesapla());
  kare.selamla();
  Sekil dikdortgen = Dikdortgen(10, 5);
  print(dikdortgen.alanHesapla());
  print(dikdortgen.cevreHesapla());
  dikdortgen.selamla();

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikortgenler = [];
  List<Sekil> tumSekiller = [];
  tumSekiller.add(kare);
  tumSekiller.add(dikdortgen);

  test(kare);
  test(dikdortgen);
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("Ben şekil sınıfındayım");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    // TODO: implement cevreHesapla
    return kenar * 4;
  }

  @override
  void selamla() {
    // TODO: implement selamla
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  double uzunkenar, kisakenar;
  Dikdortgen(this.uzunkenar, this.kisakenar);
  @override
  double cevreHesapla() {
    // TODO: implement cevreHesapla
    return uzunkenar * 2 + kisakenar * 2;
  }

  @override
  double alanHesapla() {
    // TODO: implement alanHesapla
    return (uzunkenar * kisakenar) * 2;
  }
}
