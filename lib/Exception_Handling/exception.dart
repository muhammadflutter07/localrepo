void main() {
  try {
    int a = 10;
    int b = 0;
    if (b == 0) {
      print('cannot divide by zero');
    }
    int x = a ~/ b;
    print(x);
  } catch (e) {
    print('exception:$e');
  } finally {
    print('finally clause..');
  }
}
