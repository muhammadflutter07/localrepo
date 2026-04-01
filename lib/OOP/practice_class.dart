void main() {
  Student student = Student();
  Student student1 = Student();

  student.age = 17;
  student.grade = 'B';
  student.studentID = 82347;
  student.name = 'Reacher';

  student.displayinfo();
  student.updateGrade('A+');
  student.updatename('Jack Reacher');

  student.name = 'khan';
  student.age = 17;
  student.grade = 'A';
  student.studentID = 83726;

  student1.displayinfo();
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
