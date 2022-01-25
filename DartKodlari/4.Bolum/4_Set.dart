/*
Bir diğer koleksiyon yapısı da Set yapısıdır.List den en önemli farklı elemanları sıralı olarak tutmaz, 
bu durumda list lerde oldugu gibi indexleri kullanamayız.

Bir diğer farki ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklidır.
index olmadan elemanları kontrol etmek içcin contains methodu kullanılabilir, 
onun dışında listelerdeki methodlar set için de gecerlidir.*/

void main(List<String> args) {
  Set<String> isimler = Set(); //var isimler = Set(); da yazilabilir
  isimler.add("mehmet");
  isimler.add("Ali");
  isimler.add("ibo");
  isimler.add("Emrullah");
  isimler.add("Emrullah");
  isimler.add("Emrullah");
  isimler.add("Emrullah");
  isimler.add("sero");
  isimler.add("veli");
  for (String isim in isimler) {
    print(isim);
    //aynı değerlere sahip elemanlari 1 kere tek yazdırır.
  }
  //isimler[2] vs kullanılmıyo elemanları contains ile yada
  //remove' u kullanarak true false elde ederek bulabilirsiniz

  Set<int> sayilar = Set.from([1, 2, 3, 4, 8, 56, 1, 2, 6, 4, 4, 5, 6, 1, 6]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]; 
  for (int s1 in sayilar) {
    print(s1);
  }
  sayilar.addAll(ciftSayilar);//cift sayilari sayilara ekledi
  print(sayilar);
}
