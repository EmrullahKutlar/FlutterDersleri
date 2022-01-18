/* Sorular

1- Adınızıi soyadınızı ve yasınızı farkli degiskenlerde saklayıp, ekrana 
"Benim adim Emrullah Kutlar, yasım 22 ve tum ismimdeki karakter sayısı 14'tur yazdırın"

2- Bir Üçgenin tüm kenarlarını degiskenlerde saklayıp cevresini ekrana yazdırın
Örneğin; Birinci kenarı:3,  ikinci kenarı:4 , ücüncü kenarı:5, olan ücgenin cevresi 12 dir  */

void main(List<String> args) {
  var isim = "Emrullah";
  var soyIsim = "Kutlar";
  var yas = 22;
  print("Benim adım $isim $soyIsim, yasım"
      " $yas ve tum ismimdeki karakter sayisi ${(isim + soyIsim).length }'tur ");

  var birinciKenar = 8;
  var ikinciKenar = 8;
  var ucuncuKenar = 8;
  print(
      "Birinci Kenar: $birinciKenar, İkinci Kenarı: $ikinciKenar, Ucuncu Kenarı: $ucuncuKenar"
      " olan ucgenin cevresi ${birinciKenar+ikinciKenar+ucuncuKenar} 'dir");
}
