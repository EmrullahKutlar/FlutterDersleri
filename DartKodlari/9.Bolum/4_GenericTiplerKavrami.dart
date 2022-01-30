/**
 * Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe baglıdır.
 * Sürekli kullanılan koleksiyon yapıları (liste, map, set) varsayılan olarak heterojendir. Yani
 aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mısınız ?
 * Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar
 type-safe olur, compile time da hatalı veri girişi tespit edilir ve bize hatamız söylenir.
 Böylece runtimeda çıkabilecek hataların önüne geçilir.
 * Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler
 olacağı anlamı taşır. Bu listeye String dişında bir veri eklenirse daha programı çalıştırmadan
 hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.
 * Generic'ler dartta bulunan çoğu yapıda zaten vardır. List, map, set, Future, Stream gibi...
 Kendi oluşturduğunuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha
 güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yapılarını tek bir yapıda
 toplayabilirsiniz.
 */
void main(List<String> args) {
  List liste = [];
  liste.add("Emrullah");
  liste.add(2);
  liste.add(true);
  yazdir(liste);
}
//bu şekilde hata veriyor type larını yazmak daha verimli bir calisma seklidir

yazdir(List list) {
  print(list[0].length);
}
