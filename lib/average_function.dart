import 'dart:developer';

double average(int a, int b, int c) {
  return (a + b + c) / 3;
}

void main() {
  double avg = average(10, 20, 30);
  double number = average(100, 150, 300);

  print(avg.toString());
  print(number);
  print(number.truncate());
}
