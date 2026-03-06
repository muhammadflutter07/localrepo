void main() {
  greetuser("Rahid ktk", 13);
  greetuser("Rahid");
  greetuser();
}

void greetuser([String? name = "Guest", int? no]) {
  print("Hello $name, youre room No $no");
}

var myname = (String name) {
  print("name = $name");
};
