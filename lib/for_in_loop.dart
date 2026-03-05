void main() {
  List<int> numbers = [5, 10, 15, 20];
  List<String> fruits = ["mango", "apple", "orange"];

  for (var num in numbers) {
    print(num);
    print(num * 9);
  }

  for (var fruitsname in fruits) print("I like $fruitsname");
}
