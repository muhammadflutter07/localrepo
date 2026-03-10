Function outer() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}

void main() {
  var counter = outer();

  print(counter());
  print(counter());
  print(counter());
}
