void main(List<String> args) {
  var sayi1 = 5;
  var sayi2 = 7;
  if (sayi1 < sayi2) {
    print("$sayi2 $sayi1 den büyüktür ");
  } else if (sayi1 == sayi2) {
    print("$sayi1 $sayi2 e eşittir");
  } else {
    print("$sayi1 $sayi2 den büyüktür ");
  }

  var not = 75;
  if (not >= 90 && not <= 100) {
    print("Notunuz: AA");
  } else if (not >= 80 && not < 90) {
    print("Notunuz:BA");
  } else if (not >= 70 && not < 80) {
    print("Notunuz:BB");
  } else if (not >= 60 && not < 70) {
    print("Notunuz:CB");
  } else if (not >= 50 && not < 60) {
    print("Notunuz:CC");
  } else {
    print("Notunuz: FF");
  }

  /* tek satırda if else kullanımı */

  var rakam1 = 2;
  var rakam2 = 5;
  var rakam3;
  if (rakam1 < rakam2) {
    rakam3 = rakam2;
  } else {
    rakam3 = rakam1;
  }
  print("ust kısım printi rakam3: $rakam3");

//yukarıdaki if else bloğunu aşşağıdaki gibi kullanabiliriz

  rakam1 < rakam2 ? rakam3 = rakam2 : rakam3 = rakam1;

  print("alt kısım printi rakam3: $rakam3");
  //yada assağıdaki gibide kullanabiliriz
  rakam3 = rakam1 < rakam2 ? rakam2 : rakam1;
  print("en alt kısım printi rakam3: $rakam3");

  String? ad = null;
  String? soyad = 'Kutlar';
  String? mesaj;
  mesaj = ad ?? soyad; //eğer ad null ise soyadı al sğer soyad null ise adı al
  print("Merhaba $mesaj");
}
