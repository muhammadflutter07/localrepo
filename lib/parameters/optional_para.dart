void main() {
  greetuser("faiz", 13);
  greetuser("faiz");
  greetuser();
  greetuser();
}

void greetuser([String? name = "Guest", int? no]) {
  print("Hello $name, youre room No $no");
}
