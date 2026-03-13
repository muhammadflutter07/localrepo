void main() {
  int a = 10;
  int b = 20;

  try {
    int result = a ~/ b;
    print('Result: $result');
  } catch (e) {
    print('Error: cannot divide by zero');
  } finally {
    print('division attempt finished');
  }
}
