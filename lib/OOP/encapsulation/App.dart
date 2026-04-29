import 'package:flutter/material.dart';

class Student {
  int _marks = 87;
  String _grade = '';

  int get marks => _marks;

  void set marks(int marks) {
    if (marks >= 0 && marks <= 100) {
      _marks = marks;
    } else {
      print('error: invalid marks');
    }
  }

  String get grade => _grade;

  void calculategrade() {
    if (_marks >= 85) {
      _grade = "A grade";
    } else {
      _grade = " grade";
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  TextEditingController controller = TextEditingController();
  Student student = Student();
  @override
  void initState() {
    super.initState();
    student.calculategrade();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Card"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Marks:${student.marks}", style: TextStyle(fontSize: 22)),
            Text("Grade:${student.grade}", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  student.marks = 95;
                  student.calculategrade();
                });
              },
              child: Text("Set marks to 95"),
            ),
          ],
        ),
      ),
    );
  }
}
