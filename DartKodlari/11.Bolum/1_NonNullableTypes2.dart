/* Generic tipleri belirtirken de nullable ve non-nullable kavramları geçerlidir.
* Burda önemli olan ? nereye koydugumuzdur.

* Liste null olabilir diyorsak List<String>?, listenin bazı elemanları null olabilir
diyorsak List<String?> diye belirtebiliriz.
*/
main(List<String> args) {
  List<String> stringListesi = ['Emrullah', 'Hasan', 'Ali'];
  List<String>? nullolabilecekStringListesi;
  List<String?> nullolabilecekStringleriTutanListe = [
    'Emrullah',
    null,
    'Hasan'
  ];
  print('string listesi $stringListesi');
  print('null olabilecek liste $nullolabilecekStringListesi');
  print(
      'nullolabilecekStringleriTutanListe $nullolabilecekStringleriTutanListe');
}
