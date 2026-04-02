void main() {
  List<Student> students = [
    Student('john', 20),
    Student('doe', 50),
    Student('alice', 75),
    Student('bob', 85),
  ];

  students.forEach((element) {
    print('name ${element.name} marks ${element.marks}');
  });
  Student student = Student('khan', 87);
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
