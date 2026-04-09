void main() {
  Student student = Student(name: 'john', marks: 12);

  student.display();
  student.checkresult();
}

class Student {
  String name;
  int marks;

  Student({this.name = '', this.marks = 0});

  void display() {
    print('Student name: $name');
    print('Student marks: $marks');
  }

  void checkresult() {
    print(marks >= 40 ? 'pass' : 'fail');
  }
}
