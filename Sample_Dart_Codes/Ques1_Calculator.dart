import 'dart:io';

void main() {
  var ch;
  ch = "Y";
  while (ch == "Y") {
    var a, b;
    a ??= int.parse(stdin.readLineSync()!);
    b ??= int.parse(stdin.readLineSync()!);
    dynamic op = stdin.readLineSync();
    if (op == "+") {
      print(a + b);
    } else if (op == "-") {
      print(a - b);
    } else if (op == "*") {
      print(a * b);
    } else {
      print(a / b);
    }
    print("Press Y to continue");
    ch = stdin.readLineSync();
  }
}
