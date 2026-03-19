import 'dart:io';

void main() {
  print('Enter first number:');
  String? input1 = stdin.readLineSync();

  print('Enter second number:');
  String? input2 = stdin.readLineSync();

  print('Enter operator(+,-,*,/,~/):');
  String? op = stdin.readLineSync();

  try {
    int a = int.parse(input1!);
    int b = int.parse(input2!);

    if (op == '+') {
      print(a + b);
    } else if (op == '-') {
      print(a - b);
    } else if (op == '*') {
      print(a * b);
    } else if (op == '/' || op == '~/') {
      if (b == 0) {
        print('cannot divide by zero');
      } else {
        if (op == '/') {
          print(a / b);
        } else {
          print(a ~/ b);
        }
      }
    } else {
      print('Invalid operator');
    }
  } catch (e) {
    print('Invalid number input');
  }
}
