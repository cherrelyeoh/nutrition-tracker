import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard1.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
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
                  MaterialPageRoute(builder: (context) => const LoginPage()),
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
                  MaterialPageRoute(builder: (context) => const OnboardPage()),
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
