import 'dart:math';

class CemberDaire {
  double _pi = 3.14;
  double _yariCap = 0;
  CemberDaire(double yariCap) {
    _yariCapKontrol = yariCap;
  }
  void set _yariCapKontrol(double yariCap) {
    if (yariCap > 0) {
      this._yariCap = yariCap;
    } else
      this._yariCap = 0;
  }

  void alanHesapla() {
    double alan = pi * _yariCap * _yariCap;
    print("dairenin alanı= $alan'dır");
  }

  void cevreHesapla() {
    double cevre = 2 * pi * _yariCap;
    print("dairenin cevresi= $cevre'dır");
  }
}

class Ogrenci {
  int id;
  int not;

  Ogrenci({this.id = 1, this.not = 1});

  @override
  String toString() {
    // TODO: implement toString
    return "ID: $id Not Değeri: $not";
  }
}
