/** await async ile cozumu */

void main(List<String> args) async {
  Map<String, dynamic> userName = await userGetir(1);
  List<String> kurslar = await kurslariGetir(userName['userName']);
  print(kurslar);
  String yorum = await yorumuGetir(kurslar[0]);
  print(yorum);
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
