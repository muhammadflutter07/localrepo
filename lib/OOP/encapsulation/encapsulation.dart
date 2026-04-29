class Marks {
  int _marks = 0;

  int get marks => _marks;

  void setmarks(int value) {
    if (value >= 0 && value <= 100) {
      _marks = value;
    } else {
      print('invalid marks');
    }
  }
}

void main() {
  Marks marks = Marks();
  print(marks);
}
