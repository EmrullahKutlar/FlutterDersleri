/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada
karsımıza static kavramı cıkar.
Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz
bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil
sınıfın method ve değişkenleridir.
ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.
static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metot içinden static
değerlere erişilebilir.
 */

void main(List<String> args) {
  Matematik m1 = Matematik(1, 2);
  m1.topla(); //1
  m1.cikar(); //2
  Matematik m2 = Matematik(10, 20);
  m2.topla(); //3
  m2.cikar(); //4
  print(Matematik.PI); //m1 gibi bir nesne üretmedende erişilebiliyor
  Matematik.sinifAdiniSoyle(); //m1 gibi bir nesne üretmedende erişilebiliyor
  print("Toplam islem sayisi= ${Matematik.toplamIslemSayisi}");
  /*burada yoplamIslemSayısı static olduğu için sadece bir nesneye değil tüm 
  class içine bakıyor o yuzden yeni bir nesne oluştuğu zaman tekrardan sıfırlanmıyor*/
}

class Matematik {
  //Insatance variables
  int _s1 = 0;
  int _s2 = 0;
  //class variable, sınıf degiskeni
  //static olmayan verilere veya fonksiyonlara erişim sağlanamaz
  //instance veriables lere erişim sağlayamazlar ama instance 
  //variableslar bunlara erişim sağlayabilir
  static double PI = 3.14;
  static int toplamIslemSayisi = 0;
  static void sinifAdiniSoyle() {
    //_s1 = 15;  34.satıra bak
    //topla(); 34.satıra bak
    print("Ben Matematik Sınfıyım");
  }

  Matematik(this._s1, this._s2);

  void topla() {
    print("Toplam= ${_s1 + _s2}");
    toplamIslemSayisi++;
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Fark= ${_s1 - _s2}");
  }
}
