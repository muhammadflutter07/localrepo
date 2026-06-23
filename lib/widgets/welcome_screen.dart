// import 'package:flutter/material.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//         child: Column(
//           children: [
//             Center(
//               child: Text(
//                 "Discover",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),

//             Center(
//               child: Text(
//                 "Track your resume progress,apply smartly,\nand celebrate your wins",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 16,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ),
//             Image.asset(
//               'assets/illustrationa_image.png',
//               height: 300,
//               fit: BoxFit.contain,
//             ),
//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: () {
//                 print("Button pressed");
//               },
//               child: Text("Sign up"),

//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 disabledBackgroundColor: Colors.grey,
//                 disabledForegroundColor: Colors.grey,
//                 elevation: 5,
//                 shadowColor: Colors.black,

//                 minimumSize: Size(300, 50),
//                 maximumSize: Size(400, 60),
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),

//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(
//                   child: Text(
//                     "Already have an account?",
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 GestureDetector(
//                   child: Text("Sign up", style: TextStyle(color: Colors.blue)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Screen ka height aur width le
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.1), // 10% of screen height
            // Heading
            Text(
              'Discover',
              style: TextStyle(
                fontSize: screenWidth > 600 ? 32 : 24, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            // Subtitle
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Text(
                'Track your resume progress, apply smartly, and celebrate your wins',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),

            SizedBox(height: screenHeight * 0.1),

            // Illustration
            Image.asset(
              'assets/illustrationa_image.png',
              height: screenHeight * 0.3, // 30% of screen height
              fit: BoxFit.contain,
            ),

            SizedBox(height: screenHeight * 0.08),

            // Sign Up Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Sign up', style: TextStyle(color: Colors.white)),
              ),
            ),

            SizedBox(height: screenHeight * 0.05),

            // Already have account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                SizedBox(width: 5),
                GestureDetector(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}
