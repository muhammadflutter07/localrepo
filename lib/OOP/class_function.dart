void main() {
  Student student = Student('john', 20);

  student.display();
  student.checkresult();
}

class Student {
  String name;
  int marks;

  Student(this.name, this.marks);

  void display() {
    print('Student name: $name');
    print('Student marks: $marks');
  }

  void checkresult() {
    print(marks >= 40 ? 'pass' : 'fail');
  }
}
