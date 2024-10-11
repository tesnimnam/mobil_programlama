import 'dart:io';

class Ogrenci {
  String ad;
  String soyad;
  List<double> notlar = [];

  Ogrenci(this.ad, this.soyad);

  void notEkle(double not) {
    notlar.add(not);
    print('$ad $soyad için not eklendi: $not');
  }

  double ortalamaHesapla() {
    if (notlar.isEmpty) {
      print('Not eklenmedi.');
      return 0.0;
    }
    double toplam = notlar.reduce((a, b) => a + b);
    return toplam / notlar.length;
  }
}

void main() {
  print('Öğrencinin adını girin:');
  String? ad = stdin.readLineSync();

  print('Öğrencinin soyadını girin:');
  String? soyad = stdin.readLineSync();

  if (ad == null || soyad == null) {
    print('Geçersiz giriş. Öğrenci bilgilerini doğru girmeniz gerekiyor.');
    return;
  }

  Ogrenci ogrenci = Ogrenci(ad, soyad);

  while (true) {
    print('Not eklemek için bir sayı girin (Çıkış yapmak ve ortalamayı görmek için "çıkış" yazabilirsiniz):');
    String? input = stdin.readLineSync();

    if (input != null && input.toLowerCase() == 'çıkış') {
      break;
    }

    double? not = double.tryParse(input!);
    if (not != null) {
      ogrenci.notEkle(not);
    } else {
      print('Geçersiz giriş, lütfen bir sayı girin.');
    }
  }

  double ortalama = ogrenci.ortalamaHesapla();
  print('${ogrenci.ad} ${ogrenci.soyad} isimli öğrencinin not ortalaması: $ortalama');
}