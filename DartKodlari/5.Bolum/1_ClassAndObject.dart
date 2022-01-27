/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve
 methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır
 * */
void main(List<String> args) {
  Ogrenci ogrenci = Ogrenci();
  ogrenci.ogrNo = 201713171061;
  ogrenci.ogrAd = "Emrullah";
  ogrenci.aktifOgrenci = true;
  //classı birden fazla kez kullanabiliriz. Oluşturduğumuz nesneler diğer nesneleri etkilemez.
  //Ogrenci sinif ogrenci ise nesnedir (orenci2, ogrenci3... bunlar nesne)
  Ogrenci ogrenci2 = Ogrenci();
  Ogrenci ogrenci3 = Ogrenci();

  var ogrenci4 = Ogrenci();
}

class Ogrenci {
  int? ogrNo;
  String? ogrAd;
  bool? aktifOgrenci;
  void dersCalis() {
    print("ogrenci ders calısıyor");
  }
}
