// import 'package:appbar/practice.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(debugShowCheckedModeBanner: false, home: PracticeScreen()),
//   );
// }
import 'dart:io';

void main() {
  String correctpassword = "1234";
  String userinput = "";
  int attempts = 0;
  while (userinput != correctpassword && attempts < 3) {
    print('Enter password');
    userinput = stdin.readLineSync()!;

    if (userinput != correctpassword) {
      attempts++;
      print('Wrong password');
    }
  }
  if (userinput == correctpassword) {
    print('successfull');
  } else {
    print('Account locked');
  }
  ;
}
