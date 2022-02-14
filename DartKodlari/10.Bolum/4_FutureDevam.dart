void main(List<String> args) {
  print("Program baslasın");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik islem");
  }); //future yapısını ayrı bir yere alıyor alttan devam ediyor sonra
  //future ele alınıyor
  print("Program bitti");
  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000000; i++) {
      toplam = toplam + i;
    }
    return toplam;
  });
  toplam.then((value) => print(value));
}
