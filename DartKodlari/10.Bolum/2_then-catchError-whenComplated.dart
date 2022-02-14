import 'dart:io';

void main(List<String> args) {
  print("anne cocugu ekmek almaya yollar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc
      .then((value) => print(value))
      .onError((error, stackTrace) => print(error))
      .whenComplete(() => print("Ekmek alma islemi bitti"));
  print("peynir zeytin hazırlanır");
  print("Kahvaltı Hazır!");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "cocuk ekmegi alıp eve gelir";
    // throw Exception("Bakkalda ekmek kalmamıs");
  });
  return sonuc;
}
