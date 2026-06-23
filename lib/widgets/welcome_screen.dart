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
            SizedBox(height: screenHeight * 0.1),

            Text(
              'Discover',
              style: TextStyle(
                fontSize: screenWidth > 600 ? 32 : 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Text(
                'Track your resume progress, apply smartly, and celebrate your wins',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),

            SizedBox(height: screenHeight * 0.1),

            Image.asset(
              'assets/illustrationa_image.png',
              height: screenHeight * 0.3,
              fit: BoxFit.contain,
            ),

            SizedBox(height: screenHeight * 0.08),

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
