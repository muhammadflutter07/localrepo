int multiply(int x, int y) {
  return x * y;
}

int add(int x, int y) {
  return x + y;
}

void operatenumbers(int a, int b, Function operation) {
  var result = operation(a, b);
  print(result);
}

void main() {
  operatenumbers(12, 12, multiply);
  operatenumbers(13, 8, add);
}
