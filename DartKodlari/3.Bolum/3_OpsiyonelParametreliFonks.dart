/* 
* Methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese
de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
* Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu
ortadan kaldırır.
* Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri
belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda
kalırız.
* Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu
değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler
kullanılır.
*/

void main(List<String> args) {
  int toplam = sayiTopla(1, 2, 3);
  print("sayiların toplamı $toplam dır");
  int toplam2 = sayiTopla2(2, 5);
  print("sayiların toplamı $toplam2 dır");
  int toplam3 = sayiTopla3(s3: 5, s1: 7);
  print("sayiların toplamı $toplam3 dır");
}

//burda parametrelerin girilmesi zorunludur
int sayiTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}

/*burada s1 ve s2 zorunlu ama s3 zorunlu değildir.
fakat s3 bir değer almassa null olucağından program sıkıntıya girebilir
o yuzden bir başlangıç değeri olmak zorunda burada 0 verdik*/
int sayiTopla2(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}

/*Burada tekrardan kullanıcı tüm değerleri göndermek zorunda değildir. Ayrıca
yukarıdaki örneklerde gönderilen değerler sırasıyla parametrelere atanıyordu yani
ilk değer s1'e 2. değer s2'ye... burada kullanıcı istediği siradan başlayabilir 
ilk basta s2'yi yada s3'ü girebilir yada hiçbirini girmez. Fakat değer girmesse  
null olacakları için bir default değerleri olmak zorundadır. Burada 0 yaptık.*/
int sayiTopla3({int s1 = 0, int s2 = 0, int s3 = 0}) {
  return s1 + s2 + s3;
}
