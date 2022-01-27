import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "Emrullah";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarmi()) {
      if (_kullaniciAdi == "Emrullah" && _sifre == "123456")
        return true;
      else
        return false;
    } else
      return false;
  }

  bool _internetVarmi() {
    if (Random().nextBool())
      return true;
    else
      return false;
  }

  VeritabaniIslemleri() {}
  VeritabaniIslemleri.login(String kullaniciAdi, String sifre) {}
}
