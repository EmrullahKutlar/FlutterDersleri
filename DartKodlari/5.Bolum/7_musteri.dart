class Musteri {
  int? _musteriNo;
  Musteri(int musteriNo) {
    _musteriNoControl(musteriNo);
    _musteriNoAta = musteriNo;
  }
  void _musteriNoControl(int no) {
    if (no > 100) {
      _musteriNo = no;
    } else
      return;
  }

  void bilgileriYazdir() {
    print("Müsteri numarasi: $_musteriNo");
  }
  //yada son 2 fonks set ve getle yapabiliriz

  void set _musteriNoAta(int no) {
    //setter
    if (no > 100) {
      _musteriNo = no;
    } else
      return;
  }

  String get MusteriNoYazdir {
    return "Musteri no: $_musteriNo";
  } //aynısını aşşağıdaki gibi tanımlayabiliriz

  String get MusteriNoYazdir2 => "Musteri no: $_musteriNo";
}
