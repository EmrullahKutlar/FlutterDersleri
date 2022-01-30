void main(List<String> args) {
  try {
    Ogrenci emrullah = Ogrenci(-5);
    print(emrullah.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
    print(e);
  } finally {
    print("Program bitti");
  }
}

class AgeException implements Exception {
  String mesaj = "Age Exception";
  AgeException({mesaj});
  @override
  String toString() {
    // TODO: implement toString
    return "Hatanin toString Metodu";
  }
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException();
    } else {
      this.yas = yas;
    }
  }
}
