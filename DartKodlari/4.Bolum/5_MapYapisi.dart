import 'dart:math';

/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz
 olması gerekmektedir.
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */
void main(List<String> args) {
  Map<String, int> alanKodlari = {
    //ilk deger key sonraki value. Bildigimiz JSON formatı.
    "Ankara": 312,
    "Bursa": 224,
    "İstanbul": 212,
  };
  print(alanKodlari);
  print(alanKodlari["Bursa"]);
  Map<String, dynamic> emrullah = {
    "soyad": "Kutlar",
    "yas": 22,
    "okuduguBolum": "Bilgisayar Muhendisligi"
  };
  print(emrullah);
  print(emrullah["okuduguBolum"]);

  for (String key in emrullah.keys) {
    print(key);
    //print(emrullah[key]);
  }

  /*eger valuesleri gezeceksek ve valueler tek bir veri tipinde degilse 
  for içerisinde tanımladığımız yer dynamic yada var olacak Örneğin;
  

  for (dynamic value in emrullah.values) {
    print(value);
  }

  for (var entry in emrullah.entries) {
    // print(entry);
    print("Key'i = ${entry.key}  Value'su = ${entry.value}");
  }
*/
  if (emrullah.containsKey('yas')) {
    print(
        "Emrullah mapinin içerisinde yasi keyi var valuseide ${emrullah["yas"]}");
  } else {
    print("Emrullah mapinin içerisinde bu key yok");
  }
}
