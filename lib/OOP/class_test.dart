void main() {
  Student student = Student('khan', -2);
  student.detail();
  student.checkresult();
  student.checkgrade();
}

class Student {
  String name;
  int marks;

  Student(this.name, this.marks) {
    if (marks < 0) {
      throw Exception('error: marks cannot be negative');
    }
  }

  void detail() {
    print('Student name: $name and marks: $marks');
  }

  void checkresult() {
    print(marks >= 40 ? 'pass' : 'fail');
  }

  void checkgrade() {
    if (marks >= 80) {
      print('grade A');
    } else if (marks >= 60) {
      print('grade B');
    } else if (marks >= 40) {
      print('grade C');
    } else {
      print('fail');
    }
  }
}
