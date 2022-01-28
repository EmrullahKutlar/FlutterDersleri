import 'dart:ffi';

void main(List<String> args) {
  User user1 = User();
  user1.girisYap();
  NormalUser normalUser = NormalUser();
  normalUser
      .girisYap(); /*NormalUserin içerisinde gris yap olmamasına 
  rağmen Userdan kalıtım sağlandaığı için o fonksiyonada erisim sağlayabiliyor.*/
  SadeceOkuyanUser sadeceOkuyanUser = SadeceOkuyanUser();
  sadeceOkuyanUser.girisYap();
  sadeceOkuyanUser.adiniSoyle();
  sadeceOkuyanUser.davetEt();
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
