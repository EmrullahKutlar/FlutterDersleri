/*
Lambda: İsmi olmayan fonksiyonlardir. Dartta her fonksiyon aslında bi nesnedir.
*/
void main(List<String> args) {
  var fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print("Sayilarin toplami: $toplam");
  };
  //yada
  Function fonksiyon2 = (int a, int b) {
    int toplam = a + b;
    print("Sayilarin toplami: $toplam");
  };
  fonksiyon1(1, 2);
  fonksiyon2(5, 7);

  var f3 = (int s) => s * 2;
  var f4 = (int s2) => s2 * 2;

  var sayi = f3(5);
  print(f4(7));
  print(sayi);
}

//normal fonskiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print("Sayilarin toplami: $toplam");
}
