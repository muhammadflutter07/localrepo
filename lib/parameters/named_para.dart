void main() {
  print(greetuser(name: "Faiz", age: 24));
}

String greetuser({required String name, required int age}) =>
    ("Hello $name, you are $age, years old");
