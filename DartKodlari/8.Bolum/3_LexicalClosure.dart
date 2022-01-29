/**
 * Closure özel bir fonskiyondur, closure ile bir üst kapsamdaki değişkenlerin 
 * degerlerini degistirebiliriz.
 */
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;
    void b() {
      var bDegiskeni = 3;
      print(mainDegiskeni);
      print(aDegiskeni);
    }
  }

  var d = topla(5);
  var sonuc = d(5);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => deger * eleman;
}
