import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_bloc.dart';
import 'package:fluttertest/pages/Homepage/main.dart';
import 'package:fluttertest/pages/Introduction/intro.dart';
import 'package:fluttertest/pages/Login/register.dart';
import 'package:fluttertest/services/api/export.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/base/base_app_component.dart';
import 'package:fluttertest/widgets/login_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<void> loginUser() async {
    debugPrint('Login User called');
    setState(() {
      isLoading = true;
    });

    final loginData = LoginDto(
        emailAddress: emailController.text, password: passwordController.text);

    final dio = Dio();
    debugPrint("Login Email ${emailController.text}");
    debugPrint("Login Password ${passwordController.text}");

    final client = AuthenticationClient(dio, baseUrl: 'http://10.0.2.2:3000/');

    try {
      final user = await client.userControllerLogin(body: loginData);
      final userId = user.id;
      debugPrint("User trying to login!");
      debugPrint("🔁 Response: ${jsonEncode(user)}");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => BaseScreen(
                  userId: userId,
                )),
      );
    } on DioException catch (e) {
      // Access status code from DioError
      final statusCode = e.response?.statusCode;
      debugPrint('❌ Registration failed with status: $statusCode');
      debugPrint('Response data: ${e.response?.data}');
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onboardingBloc = BlocProvider.of<OnboardingBloc>(context);
    debugPrint("OnboardingBloc instance: $onboardingBloc");
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

            LoginInput(
              controller: emailController,
              height: 45,
              width: 325,
              backgroundColor: const Color(0xFF700000),
              placeholderInput: "Email",
              icon: Icons.email,
            ),

            const SizedBox(
              height: 20,
            ),

            LoginInput(
              controller: passwordController,
              height: 45,
              width: 325,
              backgroundColor: const Color(0xFF700000),
              placeholderInput: "Password",
              isObscureText: true,
              icon: Icons.lock,
            ),

            const SizedBox(height: 50),

            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: ElevatedButton(
                onPressed: isLoading ? null : loginUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE6C6C),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Color(0xFFFE6C6C)),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  elevation: 0,
                ),
                child: isLoading
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : const Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),

            const Spacer(),

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
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
