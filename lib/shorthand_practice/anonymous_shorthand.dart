void main() {
  greet("muhammad");
  print(square(6));
  print(greetuser("Khan"));
  print(greetuser("Khalid", "Dr"));
}

void greet(String name) {
  print(name);
}

int square(int n) => n * n;

String greetuser(String name, [String title = "Mr"]) => "Hello $title $name!";
