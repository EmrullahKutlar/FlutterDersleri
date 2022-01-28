import 'dart:ffi';

void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyanUser user3 = SadeceOkuyanUser();
  AdminUser user4 = AdminUser();
  User user5 = AdminUser(); //upcasting yukari çevrim
  //her adminuser bir userdir
  User user6 = SadeceOkuyanUser();
  //her SadeceOkuyanUser bir userdir
  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
}

void test(User kullanici) {
  kullanici.girisYap();//polimorfizim (cok biçimlilik)
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giris yapti");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("Normal user giris yapti");
  }
  /* üst sınıftaki fonksiyonu kendimize göre düzenledik*/
}

class SadeceOkuyanUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("SadeceOkuyanUser giris yapti");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisi() {
    print("Toplam kullanici sayisi: 20");
  }
}
