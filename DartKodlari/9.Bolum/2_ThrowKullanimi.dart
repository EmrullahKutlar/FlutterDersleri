import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-25);
    print("Deger ${deger.toStringAsFixed(0)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(double sayi) {
  if (sayi < 0) {
    throw FormatException("Sayi negatif olamaz");
    // eger hata varsa once buraya bakar try catch varmi diye
    //eger burada yoksa try catch cagirildigi yere gider orda varmı diye vsvss.
  }
  return sqrt(sayi);
  //bu kisim soylede olabilirdi
  /* try {
     if (sayi < 0) {
    throw FormatException("Sayi negatif olamaz");
  }else
  return sqrt(sayi);
  }on FormatException catch (e) {
    print("${e.message}");
  }
  finally{
    return 0;
  }
  double bir fonksiyon olduğu için bir deger dondurmek zorunda
  */
}
