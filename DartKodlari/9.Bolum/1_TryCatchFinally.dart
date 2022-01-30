/*Try kodu çalıştırır eğer hata varsa catch onu yakalar. ama program çalışmaya 
devam eder.
on ile hatayi biliyosak ne olduğunu yazabiliriz.
finally ne olursa olsun çalışır.*/

void main(List<String> args) {
  print("Program Basladi");
  try {
    //int sayi = 100 ~/ 0;
    int sayi = 100 ~/ int.parse("Emrullah"); //14. satırın calısması için
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bolen sifir olamaz");
  } on FormatException catch (e) {
    print(e);
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı ${e}");
  } finally {
    print("islem bitti");
  }

  print("Program bitti");
}
