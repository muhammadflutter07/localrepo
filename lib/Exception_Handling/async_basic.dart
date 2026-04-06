void waitandprint() async {
  print('wait..');
  await Future.delayed(Duration(seconds: 3));
  print('after 3 seconds');
}

void main() async {
  waitandprint();
}
