import 'dart:async';

void main() {
  myprofile();
  printfonc();
  math();
  chargeFor();
  myProfiles();
}

//Exercise 1
// Void fonksiyonu geri dönüş değeri olmayan bir fonksiyondur. Bu türdeki fonksiyonlar bir değeri sürekli döndürmez,sadece belirli bir işlemi gerçekleştirir.

void printfonc() {
  print("Hello,World!");
}

//Exercise 2
// Tanımladığımız void fonksiyonu string,int,double ve bool değerler içeriyor. Veri tiplerine göre değerleri atadıktan sonra atanmış değerleri $.... işlemi ile atadığım değerleri kullanarak ekrana yazdırdım.
void myprofile() {
  String name = "Emre Çiftçi";
  int age = 22;
  double height = 180;
  bool isStudent = true;

  print("Name: $name");
  print("Age: $age");
  print("Height: $height cm");
  print("Is a student: $isStudent");
}

// Exercise 3
void math() {
  int a = 30;
  int b = 20;
  int c = 10;

// Bölme sonucunda ondalıklı sayı çıkması sebebiyle değişkeni double olmaya zorluyordu. Bunu çözebilmek için / işaretinin soluna ~(tilda) işaretini ekledim. Bu sayede bölme sonucunda her ne sayı çıkarsa çıksın bunu tam sayı oalrak geri döndürdü.
  int process = (a - b) * c ~/ (a + b);
  int processTwo = (a * b * c);
  print(process * processTwo);
}

//Exercise 4 --- Gerçek bir telefon şarj kontrol sistemi gibi sürekli şarjını kontrol eden sonsuz bir döngü yarattım ve bu döngüyü bir dakikada bir çalıştırdım.IDE'nin hata vermemesi için "asyn(asenkron)" kullandım.
void charge(int deger) {
  int charge = deger;
  if (charge == 100) {
    print("Telefon şarj edildi(Şarjın $deger)");
  } else if (charge > 20 && charge < 99) {
    print("Sarjın yeterli (Şarjın $deger)");
  } else if (charge < 20 && charge > 10) {
    print("Telefonu sarj edin.(Şarjın $deger)");
  } else if (charge <= 10) {
    print("Kritik sarj seviyesi(Şarjın $deger)");
  } else if (charge < 0 || charge > 100) {
    print("Telefon uzaydan geldi herhalde!(Şarjın $deger)");
  }
}

Future<void> chargeFor() async {
  while (true) {
    for (int i = 0; i <= 102;) {
      charge(i++);
    }
    await Future.delayed(Duration(minutes: 1));
  }
}

//Exercise 5
void myProfiles() {
  String name = "Emre";
  int age = 22;
  double height = 180;
  String favoriteColor = "Mavi";

  printUserInfo(name, age, height, favoriteColor);
}

void printUserInfo(String name, int age, double height, String favoriteColor) {
  print(
      "Merhaba, ben $name, $age yaşındayım. Boyum $height ve en sevdiğim renk $favoriteColor");
}
