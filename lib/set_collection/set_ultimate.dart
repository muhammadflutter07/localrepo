void main() {
  var list1 = [1, 2, 2, 3, 4, 5];
  var list2 = [4, 5, 5, 6, 7];

  var myset = list1.toSet().union(list2.toSet());
  myset.removeWhere((myset) => myset % 2 != 0);
  myset.add(10);
  myset.add(12);
  print(myset.contains(7));
  print(myset);
}
