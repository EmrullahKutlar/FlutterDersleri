void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["id"] = 5;
  map["isim"] = "Emrullah";
  map["renk"] = "siyah";

  var yeniMap = Map.from({"deger": "yeni"});
  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);
  var liste = [1, 2, 3, 4];
  var mapFromIterable = Map.fromIterable(liste);
  //verilen itarable degerden yeni bir map olusturuyor. bu şekilde bırakırsak
  //key ve value aynı olur
  print(mapFromIterable);

  var yeniMapFromItrerable =
      Map<String, String>.fromIterable(liste, key: (key) {
    return "$key";
  }, value: (value) {
    return "${value * 2}";
  });
  print(yeniMapFromItrerable);
  map.update("id", (value) => 15);
  //keyi id olan verinin valuesini 15 yap
  //girilen keyin valuesini guncelliyor
  print(map);
  map.update(
    "id_yeni",
    (value) => 1,
    ifAbsent: () => 150,
  );
  //eger map icinde oyle bi key yoksa olusturup valuesini atiyor
  print(map);

  map.putIfAbsent("soyIsim", () => "Kutlar");
  print(map);
  /*Burada olmayan bir key ve value eliyoruz ama egerki o key onceden var ise
  value degismiyor. Eski value kalmaya devam ediyor. Valueyu ustteki ile degistiriyoruz*/
}
