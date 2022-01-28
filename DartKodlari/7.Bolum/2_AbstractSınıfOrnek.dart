void main(List<String> args) {
  VeriTabani oracle = FirabeseDB();

  userGuncelle(oracle);
}

void userGuncelle(VeriTabani db) {
  db.userUpdate();
}

abstract class VeriTabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends VeriTabani {
  @override
  void userSave() {
    print("OracleDB üzerinden kullanıcı kayıt edildi");
  }

  @override
  void userUpdate() {
    print("OracleDB de kullanıcı update edildi");
  }

  @override
  void userDelete() {
    print("OracleDB den kullanıcı silindi");
  }
}

class FirabeseDB extends VeriTabani {
  @override
  void userSave() {
    print("FirabeseDB üzerinden kullanıcı kayıt edildi");
  }

  @override
  void userUpdate() {
    print("FirabeseDB de kullanıcı update edildi");
  }

  @override
  void userDelete() {
    print("FirabeseDB den kullanıcı silindi");
  }
}
