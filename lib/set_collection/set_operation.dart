void main() {
  var item = [100, 200, 300, 200];
  var sets = item.toSet();
  sets.add(400);
  sets.remove(100);
  print(sets.contains(300));
  print(sets);
}
