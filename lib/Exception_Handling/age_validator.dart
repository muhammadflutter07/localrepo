void validateage(int age) {
  if (age < 0) {
    throw Exception('age cant be negative! value: $age');
  } else if (age < 18) {
    throw Exception('you must be  ate least 18!');
  } else if (age > 120) {
    throw Exception('age seems invalid');
  } else {
    print('age is valid: $age');
  }
}

void main() {
  var numbers = [25, -5, 15, 130, 40];

  for (var n in numbers) {
    try {
      validateage(n);
    } catch (e) {
      print('exception caught: $e');
    }
  }
}
