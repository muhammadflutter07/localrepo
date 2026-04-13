class Student {
  int _marks = 10;

  int getmarks() {
    return _marks;
  }

  void setmarks(int marks) {
    if (marks < 0 || marks > 100) {
      print('Invalid marks. Please enter a value between 0 and 100.');
    } else {
      _marks = marks;
    }
  }
}

void main() {
  Student student = Student();
  print('initial marks: ${student.getmarks()}');
  student.setmarks(87);
  print('updated marks: ${student.getmarks()}');
  student.setmarks(150);
  print('updated marks: ${student.getmarks()}');
}
