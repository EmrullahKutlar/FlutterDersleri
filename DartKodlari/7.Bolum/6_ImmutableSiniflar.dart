void main(List<String> args) {
  const Student ermullah = Student(1, "Emrullah");
  const Student kutlar = Student(1, "Emrullah");
  if (ermullah == kutlar) {
    print("Eşittir");
  } else
    print("Eşit Değildir");
  //constructor fonksiyona const demeseydik eşit değildir dediğimiz için eşit
  //nesne uretiminin diğer yolları
  final Student emrullah2 = const Student(1, "Emrullah");//olur
  var  emrullah3 = const Student(1, "Emrullah");//olur


}

class Student {
  final int id;
  final String isim;
  const Student(this.id, this.isim);
}
