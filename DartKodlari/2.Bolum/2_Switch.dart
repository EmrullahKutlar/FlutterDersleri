void main(List<String> args) {
  String not = "DASDA";

  switch (not) {
    case "AA":
      {
        print("not 90-100 aralığındadır");
        break;
      }
    case "BA":
      {
        print("not 80-90 aralığındadır");
        break;
      }
    case "BB":
      {
        print("not 70-80 aralığındadır");
        break;
      }
    case "CA":
      {
        print("not 60-70 aralığındadır");
        break;
      }
    case "CC":
      {
        print("not 50-60 aralığındadır");
        break;
      }
    case "FF":
      {
        print("notunuz 50den düşüktür");
        break;
      }
    default:
      {
        print("hatalı giriş yaptınız");
      }
  }
}
