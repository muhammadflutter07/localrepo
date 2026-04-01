void main() {
  Student student = Student();
  Student student1 = Student();

  student.age = 17;
  student.grade = 'B';
  student.studentID = 82347;
  student.name = 'Reacher';

  student1.name = 'khan';
  student1.age = 17;
  student1.grade = 'A';
  student1.studentID = 83726;

  student.displayinfo();
  student.updateGrade('A+');
  student.updatename('Jack Reacher');

  student1.displayinfo();
  student1.updateGrade('B');
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentID;

  void displayinfo() {
    print('Student name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('Student ID: $studentID');
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print('Grade updated to $newGrade for $name');
  }

  void updatename(String newname) {
    name = newname;
    print('$name is the new name of the student');
  }
}
