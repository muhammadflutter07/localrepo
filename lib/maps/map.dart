void main() {
  var info = {"x": 100, "y": 200};
  info["z"] = 300;
  print(info["y"]);

  var details = {"name": "Ali", "age": 17};
  details["age"] = 21;
  print(details);

  var a = {"a": 1, "b": 2, "c": 3};
  a.remove("b");
  print(a);

  var items = {"item1": "pen", "item2": "book", "item3": "notebook"};
  items.forEach((key, value) {
    print("$key:$value");
  });

  var fruits = {"mango": 25, "orange": 20, "banana": 50};
  fruits.forEach((key, value) {
    if (value >= 25) {
      print("$key : $value");
    }
  });
}
