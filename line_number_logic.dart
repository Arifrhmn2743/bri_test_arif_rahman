import 'dart:io';

void main() {
  print("Masukkan nilai x1:");
  int? x1 = int.parse(stdin.readLineSync()!);
  print("Masukkan nilai v1:");
  int? v1 = int.parse(stdin.readLineSync()!);
  print("Masukkan nilai x2:");
  int? x2 = int.parse(stdin.readLineSync()!);
  print("Masukkan nilai v2:");
  int? v2 = int.parse(stdin.readLineSync()!);

  double res = (x1 - 2 - x2) / (v2 - v1);
  if (res == res.floor() && res >= 0) {
    print("Akan bertemu");
  } else {
    print("Tidak bertemu");
  }
}
