/**
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile
 interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortak ozelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları
bir çatı altında toplayabiliriz.
 * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar
 tarafından yapılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla
 sınıfı implements diyerek gerçekleştirebilir.*/
void main(List<String> args) {}

abstract class Hayvan {
  void test2() {
    print("Gövdesi var ama exxtend olduğu için birdaha yazmana gerek yok");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("gövdesi olsa bile implementte onu en azindan override etmen lazım");
  }
}

abstract class Havlayanlar {
  void bark();
}

abstract class kosabilenler {
  void run();
}

class Kopekler extends Hayvan implements Havlayanlar, kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}
