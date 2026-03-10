void main() {
  var fruits = ["Apple", "mango", "banana", "orange"];
  fruits.add("peach");
  fruits.removeAt(2);
  fruits.insert(1, "strawberry");
  fruits.removeLast();

  print(fruits);
  print(fruits[0]);
  print(fruits[3]);
  print(fruits.contains("mango"));
}
