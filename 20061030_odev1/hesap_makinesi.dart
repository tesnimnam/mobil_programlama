import 'dart:io';

void main() {
  print('Birinci sayıyı girin:');
  double? sayi1 = double.tryParse(stdin.readLineSync()!);

  print('İkinci sayıyı girin:');
  double? sayi2 = double.tryParse(stdin.readLineSync()!);

  print('İşlem türünü girin (toplama, çıkarma, çarpma, bölme):');
  String? islem = stdin.readLineSync();

  if (sayi1 == null || sayi2 == null || islem == null) {
    print('Geçersiz giriş. Lütfen sayıları doğru girin.');
    return;
  }

  double sonuc;
  switch (islem.toLowerCase()) {
    case 'toplama':
      sonuc = sayi1 + sayi2;
      print('Sonuç: $sonuc');
      break;
    case 'çıkarma':
      sonuc = sayi1 - sayi2;
      print('Sonuç: $sonuc');
      break;
    case 'çarpma':
      sonuc = sayi1 * sayi2;
      print('Sonuç: $sonuc');
      break;
    case 'bölme':
      if (sayi2 != 0) {
        sonuc = sayi1 / sayi2;
        print('Sonuç: $sonuc');
      } else {
        print('Bölme işlemi için ikinci sayı sıfır olamaz.');
      }
      break;
    default:
      print('Geçersiz işlem türü.');
  }
}
