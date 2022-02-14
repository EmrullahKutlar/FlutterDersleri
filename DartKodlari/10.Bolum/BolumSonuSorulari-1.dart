/**
 * Soru
 * Bir fonksiyon yazın bu fonksiyon aldıgı id parametresine göre bir kullanıcı getirsin. Bu işlem
 2 saniye sonunda sonuclanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map
 yapısında username ve id bilgisi olması yeterlidir.
 * getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir
 fonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde
 kursun adları olan bir liste olarak döndürecektir.
   Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu
 döndüren bir fonksiyon yazın, Bu fonksiyon 1 saniye sürecektir.
 */

/* Then ile yapımı */

void main(List<String> args) {
  userGetir(1).then((value) {
    print(value);
    String userName = value['userName'];
    kurslariGetir(userName).then((List value) {
      print(value);
      String kurs = value[0];
      yorumuGetir(kurs).then((value) => print(value));
    });
  });
}

Future<Map<String, dynamic>> userGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'userName': 'Emrullah', 'id': id};
  });
}

Future<List<String>> kurslariGetir(String userName) {
  print("$userName kullanicisinin kurslari getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Dart', 'Flutter'];
  });
}

Future<String> yorumuGetir(String kurs) {
  print("$kurs kurstaki yorumlari getiriliyor");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Bu kurs cok guzel";
  });
}
