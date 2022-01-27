import '6_veritabani.dart';

/**
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak
 isteyebiliriz. Bu durumlarda "_" işareti ile bunları saklarız.
 * getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin
 * gerekli olduğunda okunmasını sağlamaktır.
 * setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı
 özellikle private yani dış dünyanun erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri
 ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */
void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.login("Emrullah2", "1234323252");

  //class 6_veritabanı adli dosyada
  bool sonuc = db.baglan();
  if (sonuc) {
    print("Bağlantı Başarılı");
  } else {
    print("Bağlantı başarsız");
  }
}
