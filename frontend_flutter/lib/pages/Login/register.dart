import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard1.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/login_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Back Button (Left-aligned)
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.brown),
                  onPressed: () {
                    Navigator.pop(context); // Use pop instead of push
                  },
                ),

                // Spacer for center alignment
                const Expanded(
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Invisible SizedBox for balance (same width as back button)
                const SizedBox(width: 48),
              ],
            ),
            // Logo (BB Icon)
            const SizedBox(height: 40),
            Image.asset(
              'assets/img/BB_1.png', // Ensure this image is in assets
              width: 150,
            ),

            const SizedBox(height: 30),

            const Text(
              "Let's Get Started!",
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 18, // Font size
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Name",
              icon: Icons.email,
            ),

            const SizedBox(
              height: 20,
            ),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Number",
              icon: Icons.lock,
            ),

            const SizedBox(
              height: 20,
            ),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Email",
              icon: Icons.lock,
            ),

            const SizedBox(
              height: 20,
            ),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Password",
              isObscureText: true,
              icon: Icons.lock,
            ),

            const SizedBox(
              height: 20,
            ),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Re-type your Password",
              isObscureText: true,
              icon: Icons.lock,
            ),

            const Spacer(),

            RichText(
              textAlign: TextAlign.center, // Aligns the text in the center
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                children: [
                  const TextSpan(
                    text: "By continuing, you agree to \n",
                  ),
                  TextSpan(
                    text: "Terms of Use",
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to Terms of Use page
                      },
                  ),
                  const TextSpan(text: " and "),
                  TextSpan(
                    text: "Privacy Policy",
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to Privacy Policy page
                      },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            AppButton1(
              textColor: Colors.white,
              backgroundColor: Colors.grey[850],
              borderColor: Colors.white,
              borderRadius: 50,
              text: "Sign Up",
              textSize: 20,
              textWeight: FontWeight.w700,
              height: 50,
              width: 200,
              onPressed: () {
                debugPrint("Starting onboarding...");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OnboardPage1()),
                );
              },
            ),

            const SizedBox(height: 20),

            const Text(
              "or sign up with",
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 14, // Font size
              ),
            ),

            // Social Media Login Buttons (Google, Facebook)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.asset('assets/img/google.png'),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.asset('assets/img/facebook.png'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            RichText(
              text: TextSpan(
                text: "Already have an Account? ",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: "Log in",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
