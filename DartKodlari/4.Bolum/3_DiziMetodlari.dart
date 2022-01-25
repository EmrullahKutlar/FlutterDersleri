void main(List<String> args) {
  List<int> sayilar = [1, 2, 3, 4, 5, 6, 7];
  print(sayilar.first);
  print(sayilar.last);

  List<int> sayilar2 = [1, 2, 3, 4, 5, 6, 7];
  if (sayilar.isNotEmpty) {
    print(sayilar2.first);
    print(sayilar2.last);
  }

  print("Bos mu?  :${sayilar.isEmpty}");
  print("Eleman Sayisi: ${sayilar.length}");
  print("Tersten yazdır: ${sayilar.reversed}");
  sayilar.add(22);
  print(sayilar);
  sayilar.remove(3); //girilen elemanı siler ama ilk gördüğü elemanı
  print(sayilar);
  sayilar.removeAt(3);
  //girilen indexteki elemanı siler. Bu kodlar sabit boyutlu dizilerde çalışmaz.
  print(sayilar);
  if (sayilar.contains(7)) {
    print("listede 7 var");
  } else {
    print("listede 7 yok");
  }

  print(sayilar.elementAt(1)); //2.indexteki değeri yazdır
  print(sayilar.indexOf(7)); //7 nin bulunduğu indexi yazdır.
  sayilar.shuffle(); //elemanların yerini rastgele değiştiriyor
  print(sayilar);
}
