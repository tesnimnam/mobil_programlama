import 'dart:io';

void main() {
  List<int> sayilar = [];

  print('10 adet sayı girin:');
  for (int i = 0; i < 10; i++) {
    int? sayi = int.tryParse(stdin.readLineSync()!);
    if (sayi != null) {
      sayilar.add(sayi);
    } else {
      print('Geçersiz giriş, lütfen bir sayı girin. Programdan çıkmak için "çıkış" yazabilirsiniz.');
      String? cikis = stdin.readLineSync();
      if (cikis != null && cikis.toLowerCase() == 'çıkış') {
        print('Programdan çıkılıyor...');
        return;
      }
      i--; 
    }
  }

  List<int> ciftSayilar = sayilar.where((sayi) => sayi % 2 == 0).toList();

  if (ciftSayilar.isNotEmpty) {
    print('Çift sayılar: $ciftSayilar');
  } else {
    print('Listede çift sayı bulunmuyor.');
  }
}