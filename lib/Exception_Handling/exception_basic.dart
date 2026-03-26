void checknumber(int n) {
  if (n % 2 != 0) {
    throw Exception('number is odd');
  } else {
    print('number is even');
  }
}

void main() {
  try {
    checknumber(1);
  } catch (e) {
    print('exception:$e');
  }
}
