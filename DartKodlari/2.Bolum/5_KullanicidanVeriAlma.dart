import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz");
  String? isim = stdin.readLineSync();
  //kullanıcı boş geçebilir yani null olabilir "?" koyma sebebimiz o
  //readline ile girilen değerler string olur, kullanici sayi girse bile
  //onu string kabul eder mesela "45" şeklinde.
  print("Girilen isim = $isim");

  //int bir ifade elde etmek için "int.parse();" parametresi kullanılır
  print("Yaşınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  print("Girilen yas degeri: $yas");
  print("Yaşınızın karesi= ${yas * yas}");
}
