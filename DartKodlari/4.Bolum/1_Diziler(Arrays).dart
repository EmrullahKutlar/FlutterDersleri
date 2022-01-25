/**
 * List ikiye ayrılır
    1-Sabit uzunluklu
    2-Büyüyen listeler
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
 * List<int> numaralar = List.filled(10, 0); //10 eleman içeren sabit uzunluklu liste yani dizi.
 * Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0. indexine bakılır.
 numaralar[0] diyerek..
 */

void main(List<String> args) {
  //uzunluğu sabit list
  List<int> sayilar = List.filled(4, 0, growable: false);
  sayilar[0] = 1;
  sayilar[1] = 3;
  sayilar[2] = 5;
  sayilar[3] = 7;
  print(sayilar.length);
  print(sayilar[2]);
  print(sayilar);

  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "Emrullah";
  print(isimler);

  //hem string hemde int vs veri saklayabilen List
  List karisik = List.filled(5, 0);
  karisik[0] = "Emrullah";
  karisik[1] = 5;
  karisik[2] = false;
  print(karisik);

  for (int i = 0; i < sayilar.length; i++) {
    print(sayilar[i]);
  }
  for (int sayi in sayilar) {
    print(sayi);
  } //üstteki ifadeyle ayni şeyi yapar sayilar dizisinin elemanlarnı yazdırır.
}
