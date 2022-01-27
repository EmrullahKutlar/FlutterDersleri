/**
 * KURUCU METHODLAR CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi
 veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları
 yapabiliriz.
 * Farklı türde kurucu olusturabiliriz.
 * 1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
      Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
      Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){}
 şeklinde tanımlı boş bir methoddur.
      Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk
 olarak çalışan methoddur.
      Kurucu methodların geri dönüş tipi olmaz.
    2- Parametreli Kurucu Method : Aslında default constructorin parametre almış haline denir.
      Ogrenci emre=new Ogrenci("emre");
    Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli
 yapıcı olmalıdır.
 3- Named (Isimlendirilmiş) : Sınıf içerisinde
 SinifAdi.methodAdi(){
 buraya kodlar gelir.
Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz.
 
 */

void main(List<String> args) {
  Araba honda = Araba(2020,"Honda",true);
  /*honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true;
  honda.bilgileriSoyle();
  honda.modelYili = 2021;*/
  //bu satır yerine parametreli const. ile parametre vererek yaptık
  honda.bilgileriSoyle();
  var reno = Araba(2021,"Renault",true);
  reno.bilgileriSoyle();
  var bmw = Araba(2019,"BMW",true);
  reno.bilgileriSoyle();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;
  /*Araba() {
    //kurucu metod class ile aynı isimde olmalıdır
    print("Kurucu Method tetiklendi");
  }*/
  Araba(int modelYili, String marka, bool otomatikMi) {
    //kurucu metod class ile aynı isimde olmalıdır
    print("Kurucu Method tetiklendi");
  }

  void bilgileriSoyle() {
    print(
        "Arabanın modelyılı $modelYili, markası $marka, otomatik mi: $otomatikMi");
  }
}
