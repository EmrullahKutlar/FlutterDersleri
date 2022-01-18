void main(List<String> args) {
  String isim = "Emrullah";
  String soyIsim = "Kutlar";
  var repo = "Emrullah'ın Repos'u" + "Dart ve Fluttera basladik";

  print(isim + " " + soyIsim);
  print( "$isim $soyIsim"); 
  /*iki printte ayni islevi goruyor
  buna interpolation deniyor degiskenleri " " isarti icerisinde kullanmamıza yarıyor*/

  print("Soyadımda " + soyIsim.length.toString() + " adet harf var");
  print("Soyadımda ${soyIsim.length} adet harf var");
  //iki printte aynı seyi yazdirir.

  double en = 10;
  double boy = 12;

  print("Eni $en, Boyu $boy olan bir dikdortgenin alani = ${(en * boy).toInt()} dir");
  //burada to.ınt()'i ".0" ifadesinden kurtulmak için ekledim. o olmasada olur
}
