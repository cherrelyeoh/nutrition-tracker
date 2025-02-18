import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Back Button (Top Left)
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.brown),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroPage()),
                  );
                },
              ),
            ),

            // Logo (BB Icon)
            SizedBox(height: 20),
            Image.asset(
              'assets/img/BB_1.png', // Ensure this image is in assets
              width: 120,
            ),

            SizedBox(height: 20),

            // Email Field
            TextField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.email, color: Colors.white),
                ),
                hintText: "Email",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.lock, color: Colors.white),
                ),
                hintText: "Password",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 30),

            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
              ),
              child: Text("Log In",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),

            SizedBox(height: 20),

            // Social Media Login Buttons (Google, Facebook)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: SizedBox(
                    width: 24, // Adjust this value
                    height: 24, // Adjust this value
                    child: Image.asset('assets/img/google.png'),
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: SizedBox(
                    width: 24, // Adjust this value
                    height: 24, // Adjust this value
                    child: Image.asset('assets/img/facebook.png'),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
