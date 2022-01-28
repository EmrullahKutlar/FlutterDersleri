void main(List<String> args) {
  var str = "Emrullah";
  str = "Mert";

  final String str2 = "Emrullah";
  //str2 = "Kutlar";
  const str3 = "Emrullah";
  //str3 = str;
  /* Final veya const ile tanimlanan değişken sadece bir kez tanımlanabilir
  yeni bir değer atanamaz (yazilari gormek için yorum işaretini kaldır 6. ve 8.)*/
  /*Final compile oncesinde(runtime) belli olmayan durumlar için kullanılabilir 
  const ise sadece compile oncesinde(before runtime) belli olan durumlar yada değişkenler olabilir. Orneğin;*/
  final tarih = DateTime.now(); //bu olur.
  //const tarih2 = DateTime.now(); bu olmaz.
  /* The constructor being called isn't a const constructor.
Try removing 'const' from the constructor invocation.dartconst_with_non_const
Const variables must be initialized with a constant value.
Try changing the initializer to be a constant expression. */

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  if (liste == liste2) {
    print("Eşittir");
  } else {
    print("eşit değildir");
  }
  //sonuc eşit değildir.
  //final listelere tekrardan eleman eklenebilir.Bunun sebebi bellek adresinin değişmemesidir
  liste.add(25);
  liste2.add(15);

  //eğer liste=[12] gibi bir şey yazsaydık bellekteki adresini değiştirmek
  //istediğimizden dolayi buna izin vermeyecekti.

  const Liste = [1, 2, 3, 4];
  const Liste2 = [1, 2, 3, 4];
   if (Liste == Liste2) {
    print("Eşittir");
  } else {
    print("eşit değildir");
  }
  //sonuc eşittir olucak fakat bu seferde listeye Liste2.add(15) diğerek yeni eleman eklenmeyecek.



}
