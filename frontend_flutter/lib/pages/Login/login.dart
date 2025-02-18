import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Introduction/intro.dart'; // Import HomePage
import 'package:fluttertest/pages/Login/register.dart'; // Import Home2Page

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to HomePage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IntroPage()),
                );
              },
              child: Text('Go to Home'),
            ),
            SizedBox(height: 20), // Add some spacing
            ElevatedButton(
              onPressed: () {
                // Navigate to Home2Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: Text('Go to Home 2'),
            ),
          ],
        ),
      ),
    );
  }
}
