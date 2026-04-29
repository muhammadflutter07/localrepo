import 'package:flutter/material.dart';

class StudentModel {
  String _name = '';
  int _marks = 0;
  String _grade = '';

  StudentModel(this._name, this._marks, this._grade);

  String get name => _name;
  int get marks => _marks;
  String get grade => _grade;

  set name(String value) {
    _name = value;
  }

  set marks(int value) {
    if (value >= 0 && value <= 100) {
      _marks = value;
      _calculategrade();
    }
  }

  void _calculategrade() {
    if (_marks >= 80) {
      _grade = "A Grade";
    } else if (_marks >= 60 && _marks <= 79) {
      _grade = "B Grade";
    } else if (_marks >= 40 && _marks <= 59) {
      _grade = "C Grade";
    } else {
      _grade = "F grade";
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final namecontroller = TextEditingController();
  final markscontroller = TextEditingController();

  StudentModel student = StudentModel("khan", 87, "A");

  bool showresult = false;

  void submitresult() {
    int? parsedMarks = int.tryParse(markscontroller.text);

    if (namecontroller.text.isEmpty || markscontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill all fields!'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    if (parsedMarks == null || parsedMarks < 0 || parsedMarks > 100) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Marks must be between 0 and 100!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    setState(() {
      student.name = namecontroller.text;
      student.marks = int.tryParse(markscontroller.text) ?? 0;
      showresult = true;
    });
  }

  void resetresult() {
    setState(() {
      namecontroller.clear();
      markscontroller.clear();
      showresult = false;
      student = StudentModel('', 0, '');
    });
  }

  Color getGradecolor() {
    switch (student.grade) {
      case 'A':
        return Colors.orange;

      case 'B':
        return Colors.blue;

      case 'C':
        return Colors.green;

      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student Report Card",

          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF880E4F),
        foregroundColor: Colors.white,

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.indigo, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                controller: markscontroller,
                decoration: InputDecoration(
                  labelText: "Enter marks",
                  prefixIcon: Icon(Icons.score),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.indigo, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: submitresult,
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: resetresult,
                  icon: Icon(Icons.refresh, color: Colors.red),
                  label: Text("Clear", style: TextStyle(color: Colors.red)),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),

              SizedBox(height: 20),

              if (showresult)
                Card(
                  color: getGradecolor().withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          "Result",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Divider(),

                        Text("Name: ${student.name}"),
                        Text("Marks: ${student.marks}"),

                        SizedBox(height: 20),

                        Text(
                          "${student.grade}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30, // <-- bigger font
                            fontWeight: FontWeight.bold,
                            color: getGradecolor().withOpacity(
                              0.6,
                            ), // <-- grade color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "Student Report Card",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Check your grade instantly!",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterScreen()),
                );
              },
              icon: Icon(Icons.arrow_forward),
              label: Text("Get Started"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.indigo,
                minimumSize: Size(200, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
