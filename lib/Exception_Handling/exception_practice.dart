void main() {
  try {
    nocheck(12345678);
  } catch (e) {
    print('Enter a 5 digit number!!!');
  }
}

void nocheck(var n) {
  if (n.toString().length == 5) {
    print('valid number..');
  } else {
    throw FormatException();
  }
}
