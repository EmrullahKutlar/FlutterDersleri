void main(List<String> args) async /*awaiti kullana bilmek için*/ {
  print("İnternetten kisi verisi getirilecek");
  /* String kisi =
      await kisiVerisiniGetir();*/ /*Kisi gelene kadar alt taraftaki
  kodları çalıştırmıyor. 3sn yerine 20 30sn de olabilirdi*/
  // Yada beklenecek bir şey varsa ayrı bi fonksiyona atanır Orn..
  kisiIslemleri();

  print("İslem bitti");
}

void kisiIslemleri() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  Future<String> kisi = Future.delayed(Duration(seconds: 3), () {
    return "Kisi Adi: Emrullah Kutlar";
  });
  return kisi;
}
