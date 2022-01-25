void main(List<String> args) {
  var listem = [];
  //yada
  var listem2 = <String>[];

  var mySet = {};
  //içerisi boşsa başta map zanneder hata olmaması için içini doldur Örneğin;
  var myset = {"aa", "dasd"};
  var myMap = {"asd": 32};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  var sonListe = [];
  sonListe.addAll(tekSayilar + ciftSayilar);
  print(sonListe);
  //yada
  var sonListe2 = [...tekSayilar, ...ciftSayilar];
  print(sonListe2);

  var map1 = {"ad": "Emrullah"};
  var map2 = {"yas": 22};
  var allMaps = {...map1, ...map2};
  print(allMaps);

  var set1 = {"Hasan"};
  var set2 = {"Ali"};
  var set3 = {"Veli"};
  var set4 = {"Hasan"};
  var set5 = {"Ali"};
  var allSets = {
    ...set1,
    ...set2,
    ...set3,
    ...set4,
    ...set5,
  };
  print(allSets);
  
}
