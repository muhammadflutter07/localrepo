import 'dart:io';

void main() {
  var listNames = [10, 20, 30, 40];
  listNames.add(50);

  var names = [];
  names.add("khan");
  names.add("boss");
  names.addAll(listNames);
  names.insert(3, 100);

  names[2] = "Boss";

  print('$listNames');
  print('$names');
}
