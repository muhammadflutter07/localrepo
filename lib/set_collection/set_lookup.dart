void main() {
  var fruits = {"apple", "mango", "orange", "banana"};
  print(fruits.contains("banana"));
  print(fruits.contains("graps"));

  var mango = fruits.lookup('mango');
  if (mango != null) {
    print('mango found');
  } else {
    print('not found');
  }
}
