void main() {
  Person person1 = Person();
  Person person2 = Person();

  person1.name = "Ali";
  person1.fatherName = "Ahmed";
  person1.age = 30;
  person1.isStudent = false;

  person2.name = "Sara";
  person2.fatherName = "Hassan";
  person2.age = 25;
  person2.isStudent = true;

  person1.introduce();
  person2.introduce();
}

class Person {
  String? name;
  String? fatherName;
  int? age;
  bool? isStudent;

  void introduce() {
    print("my name is ${name}");
    print("my father name  is ${fatherName}");
    print("my age is ${age}");
    print(' ${isStudent}');
  }
}
