Future<String> fetchorder() async {
  await Future.delayed(Duration(seconds: 1));
  return 'pizza order is recieved';
}

Future<String> preparefood() async {
  await Future.delayed(Duration(seconds: 2));
  return 'pizza is being prepared';
}

Future<String> deliverfood() async {
  await Future.delayed(Duration(seconds: 1));
  return 'pizza is delivered';
}

void main() async {
  String order = await fetchorder();
  print(order);
  String prepare = await preparefood();
  print(prepare);
  String deliver = await deliverfood();
  print(deliver);
}
