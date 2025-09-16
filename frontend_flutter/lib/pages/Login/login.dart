// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
  bool isButtonDisabled = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(_checkFields);
    passwordController.addListener(_checkFields);
  }

  void _checkFields() {
    setState(() {
      isButtonDisabled =
          emailController.text.isEmpty || passwordController.text.isEmpty;
    });
  }

  Future<void> loginUser() async {
    debugPrint('Login User called');
    setState(() {
      isLoading = true;
    });

    final loginData = LoginDto(
      emailAddress: emailController.text,
      password: passwordController.text,
    );

    final dio = Dio();
    debugPrint("Login Email ${emailController.text}");
    debugPrint("Login Password ${passwordController.text}");

    final client = AuthenticationClient(
      dio,
      baseUrl: dotenv.env['BASE_URL'] ?? 'http://10.0.2.2:3000',
    );

    try {
      // Perform the login request with a timeout of 20 seconds
      final user = await client.userControllerLogin(body: loginData).timeout(
        const Duration(seconds: 20), // Set the timeout to 20 seconds
        onTimeout: () {
          throw DioException(
            requestOptions: RequestOptions(path: ''),
            error: 'Request Timeout: The server took too long to respond.',
          );
        },
      );
      debugPrint("User trying to login!");
      debugPrint("🔁 Response: ${jsonEncode(user)}");

      // If login is successful, navigate to the next screen
      final userId = user.user.id;
      final userName = user.user.name;

      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BaseScreen(
            userId: userId,
            userName: userName,
          ),
        ),
      );
    } on DioException catch (e) {
      // Handle DioException specifically
      final statusCode = e.response?.statusCode;
      String errorMessage = 'An error occurred, please try again later.';

      // Handle different error statuses or messages
      if (statusCode == 401 || statusCode == 404) {
        errorMessage = 'Invalid username or password. Please try again.';
      } else if (statusCode == 400) {
        errorMessage =
            'Bad request: Please check your login username or password.';
      } else if (statusCode == 500) {
        errorMessage = 'Server error: Please try again later.';
      }

      debugPrint('❌ Login failed with status: $statusCode');
      debugPrint('Response data: ${e.response?.data}');

      // Show error message to the user via a dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: Text(errorMessage),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Catch any unexpected errors
      debugPrint('❌ An unexpected error occurred: $e');

      // Show a generic error message
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content:
                const Text('An unexpected error occurred. Please try again.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } finally {
      // Always set loading to false after the request finishes
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset:
            true, // Ensures layout adjusts when the keyboard appears
        body: GestureDetector(
          // Dismiss keyboard when tapping outside
          onTap: () {
            FocusScope.of(context).unfocus(); // This will dismiss the keyboard
          },
          child: SingleChildScrollView(
            // Wrap the body in a scroll view to allow scrolling when the keyboard appears
            child: Padding(
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
                      // Centered Text ("Log In")
                      const Spacer(),
                      const Text(
                        "Log In",
                        style: TextStyle(
                          color: Color(0xFF700000),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Invisible Spacer (balances the back button)
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
                  const SizedBox(height: 20),
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
                      onPressed:
                          isButtonDisabled || isLoading ? null : loginUser,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isButtonDisabled || isLoading
                            ? Colors.grey
                            : const Color(0xFFFE6C6C),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: isButtonDisabled || isLoading
                              ? const BorderSide(color: Colors.grey)
                              : const BorderSide(color: Color(0xFFFE6C6C)),
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
                  const SizedBox(height: 100),
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
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
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
          ),
        ));
  }
}
