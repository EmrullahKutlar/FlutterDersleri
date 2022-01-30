void main(List<String> args) {
  double ortlama = ortalamaBul<double>(1, 5);
  //double ortlama2 = ortalamaBul<int>(1.5, 5.0);//olmaz
  // double ortlama3 = ortalamaBul<String>(1, 5);//olmazz
  //sadece number fakat ya girdiğimiz type ile (int ise int vs) yada typesiz olmali
  print(ortlama);
}

double ortalamaBul<T extends num>(T s1, T s2) {
  //sadece sayilari alabilir
//extends num yazmassak string vs de alabileceğinden hata veriyor.
  return (s1 + s2) / 2;
}
