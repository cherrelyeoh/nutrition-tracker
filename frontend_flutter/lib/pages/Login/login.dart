import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/app_button_2.dart';
import 'package:fluttertest/widgets/login_input.dart';

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
                icon: const Icon(Icons.arrow_back, color: Colors.brown),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroPage()),
                  );
                },
              ),
            ),

            // Logo (BB Icon)
            const SizedBox(height: 20),
            Image.asset(
              'assets/img/BB_1.png', // Ensure this image is in assets
              width: 120,
            ),

            const SizedBox(height: 20),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Email",
              icon: Icons.email,
            ),

            const SizedBox(
              height: 15,
            ),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Password",
              isObscureText: true,
              icon: Icons.lock,
            ),

            const SizedBox(height: 150),

            // Login Button
            AppButton1(
                textColor: Colors.white,
                backgroundColor: const Color(0xFFFE6C6C),
                borderColor: const Color(0xFFFE6C6C),
                borderRadius: 50,
                text: "Log In",
                textSize: 16,
                height: 50,
                width: 200),

            const SizedBox(height: 20),

            // Social Media Login Buttons (Google, Facebook)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('assets/img/google.png'),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset('assets/img/facebook.png'),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton2(
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                    borderColor: Colors.black,
                    text: "1",
                    size: 40,
                    isIcon: true,
                    icon: Icons.favorite_border),
                SizedBox(
                  height: 10,
                ),
                AppButton2(
                    textColor: Colors.black,
                    backgroundColor: Colors.yellow,
                    borderColor: Colors.black,
                    text: "2",
                    size: 40),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
