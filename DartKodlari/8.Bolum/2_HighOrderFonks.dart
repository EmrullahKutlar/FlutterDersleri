/**
 * Higher Order Functions: bir fonksiyonu parametre olarak veya geriye fonksiyon
 * donduren fonksiyonlardır.
 * Tabi ilisi aynı anda da yapilabilir
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  liste.forEach((element) {
    print("Element: $element");
  }); //yada
  print("*********************");
  liste.forEach(callBack);
  print("**********************");
  kendiForeachYapim(liste, (int deger, int index) {
    print("Deger1= $deger İndex=$index");
  });
}

void kendiForeachYapim(List<int> liste, Function callback) {
  for (var i = 0; i < liste.length; i++) {
    callback(liste[i], i);
    //aşagidaki callBack değil
  }
}

void callBack(int element) {
  print("Element: $element");
}
