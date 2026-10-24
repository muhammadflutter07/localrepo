void main() {
  List<int> marks = [70, 80, 65, 75, 90];

  print("Marks: $marks");

  int total = 0;
  for (int mark in marks) {
    total += mark;
  }

  print("Total: $total");

  double average = total / marks.length;

  print("Average: $average");

  String Grade = getGrade(average);

  print("Total:$total");
  print("Average: $average");
  print("Grade: $Grade");

  int highest = marks[0];
  int lowest = marks[0];

  for (int mark in marks) {
    if (mark > highest) {
      highest = mark;
    }
    if (mark < lowest) {
      lowest = mark;
    }

    print("Highest Marks: $highest");
    print("Lowest Marks: $lowest");
  }
}

String getGrade(double average) {
  if (average >= 90) {
    return "A+";
  } else if (average >= 80) {
    return "A";
  } else if (average >= 70) {
    return "B";
  } else if (average >= 60) {
    return "C";
  } else if (average >= 50) {
    return "D";
  } else {
    return "F";
  }
}
