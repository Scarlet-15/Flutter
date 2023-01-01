import 'dart:io';

void main() {
  var n;
  n ??= int.parse(stdin.readLineSync()!);
  var lis = [];
  for (int i = 0; i < n; i++) {
    var exp;
    exp ??= stdin.readLineSync();
    lis.add(int.parse(exp.split(':')[1]));
  }
  int lo = 0;
  int up = 10;
  for (int i = 0; i < 10; i++) {
    int sum = 0;
    for (int j = 0; j < n; j++) {
      if ((lis[j] >= lo) && (lis[j] <= up)) {
        sum++;
      }
    }
    print("$lo - $up $sum");
    if (lo == 0) {
      lo = lo + 11;
      up = up + 10;
    } else {
      lo = lo + 10;
      up = up + 10;
    }
  }
}
