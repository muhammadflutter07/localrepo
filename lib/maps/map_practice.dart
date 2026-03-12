void main() {
  var students = {"zoya": 75, "sara": 30, "ahmed": 60, "ali": 45};
  students.forEach((key, value) {
    if (value >= 50) {
      print("$key passed with $value marks");
    }
  });
}
