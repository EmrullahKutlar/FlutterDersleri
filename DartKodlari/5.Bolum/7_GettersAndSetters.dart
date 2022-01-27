import '7_musteri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(02);
  m1.bilgileriYazdir();
  print(m1.MusteriNoYazdir);//getter
  Musteri m2 = Musteri(-5);
  m2.bilgileriYazdir();
}
