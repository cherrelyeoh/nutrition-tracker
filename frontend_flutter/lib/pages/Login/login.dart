import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/pages/Login/register.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntroPage()),
                    );
                  },
                ),

                // Spacer for center alignment
                const Expanded(
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Color(0xFF700000),
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
              'assets/img/BB-1.png', // Ensure this image is in assets
              width: 150,
            ),

            const SizedBox(height: 50),

            const LoginInput(
              height: 45,
              width: 325,
              backgroundColor: Color(0xFF700000),
              placeholderInput: "Email",
              icon: Icons.email,
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

            const Spacer(),

            // Login Button
            AppButton1(
              textColor: Colors.white,
              backgroundColor: const Color(0xFFFE6C6C),
              borderColor: const Color(0xFFFE6C6C),
              borderRadius: 50,
              text: "Log In",
              textSize: 20,
              textWeight: FontWeight.w700,
              height: 50,
              width: 200,
              onPressed: () {
                debugPrint("Starting onboarding...");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainHomePage()),
                );
              },
            ),

            const SizedBox(height: 15),

            const Text(
              "New user? Sign up with us!",
              style: TextStyle(
                color: Colors.black, // Text color
                fontSize: 14, // Font size
              ),
            ),

            const SizedBox(height: 5),

            AppButton1(
              textColor: Colors.white,
              backgroundColor: const Color(0xFFFE6C6C),
              borderColor: const Color(0xFFFE6C6C),
              borderRadius: 50,
              text: "Sign Up",
              textSize: 20,
              textWeight: FontWeight.w700,
              height: 50,
              width: 200,
              onPressed: () {
                debugPrint("Navigating to RegisterPage...");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
            ),

            const SizedBox(height: 40),

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

            // SizedBox(
            //   height: 10,
            // ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     AppButton2(
            //         textColor: Colors.white,
            //         backgroundColor: Colors.black,
            //         borderColor: Colors.black,
            //         text: "1",
            //         size: 40,
            //         isIcon: true,
            //         icon: Icons.favorite_border),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     AppButton2(
            //         textColor: Colors.black,
            //         backgroundColor: Colors.yellow,
            //         borderColor: Colors.black,
            //         text: "2",
            //         size: 40),
            //     SizedBox(
            //       height: 10,
            //     ),
            //   ],
            // )
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
