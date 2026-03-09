Function createmultiplier(int n) {
  return (int x) => x * n;
}

void main() {
  var doubleit = createmultiplier(10);
  var tripleit = createmultiplier(10);

  print(doubleit(10));
  print(tripleit(10));
}
