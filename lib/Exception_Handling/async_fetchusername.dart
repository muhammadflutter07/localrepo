Future<String> fetchusername() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Muhammad khan';
}

void main() async {
  String username = await fetchusername();
  print(username);
}
