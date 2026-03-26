import 'dart:io';

int parseage() {
  print('Inter your age');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    throw FormatException('Invalid age');
  }
  int age = int.parse(input);
  return age;
}

void main() {
  try {
    int age = parseage();
    print('your age is $age');
  } catch (e) {
    print('Exception:$e');
  }
}
