import 'dart:io';

void main() {
  var n, exp;
  n ??= int.parse(stdin.readLineSync()!);
  exp ??= stdin.readLineSync();
  var lis = [];
  lis = exp.split(' ');
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      if (double.parse(lis[i]) < double.parse(lis[j])) {
        var temp = lis[i];
        lis[i] = lis[j];
        lis[j] = temp;
      }
    }
  }
  print(lis[0]);
}
