import 'dart:io';

void main(List<String> args) {
  print("anne cocugu ekmek almaya yollar");
  uzunSurenIslem();
  print("peynir zeytin hazırlanır");
  print("Kahvaltı Hazır!");
}

/* burası senkron 
void uzunSurenIslem() {
  print("cocuk ekmek almak icin evden cıkar");
  sleep(Duration(seconds: 5));
  print("cocuk ekmegi alıp eve gelir");
}*/
/**burası asenkron  */
void uzunSurenIslem() {
  print("cocuk ekmek almak icin evden cıkar");
  Future.delayed(Duration(seconds: 5), () {
    print("cocuk ekmegi alıp eve gelir");
  });
}
