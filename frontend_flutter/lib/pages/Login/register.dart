import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/pages/UserOnboarding/intro_onboarding.dart';
import 'package:fluttertest/services/api/authentication/authentication_client.dart';
import 'package:fluttertest/services/api/models/sign_up_dto.dart';
import 'package:fluttertest/widgets/login_input.dart';
import 'package:dio/dio.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final retypePasswordController = TextEditingController();

  bool isLoading = false;

  Future<void> registerUser() async {
    debugPrint('Registration User called');
    setState(() {
      isLoading = true;
    });

    // if (nameController.text.isEmpty ||
    //     emailController.text.isEmpty ||
    //     passwordController.text.isEmpty ||
    //     retypePasswordController.text.isEmpty) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text("Please fill in all fields")),
    //   );
    //   setState(() => isLoading = false);
    //   return;
    // }

    // if (passwordController.text != retypePasswordController.text) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text("Passwords do not match")),
    //   );
    //   setState(() => isLoading = false);
    //   return;
    // }

    final signUpData = SignUpDto(
      name: nameController.text,
      emailAddress: emailController.text,
      password: passwordController.text,
      mobileNumber: numberController.text,
    );

    final dio = Dio();

    debugPrint("Name ${nameController.text}");
    debugPrint("Email ${emailController.text}");
    debugPrint("Password ${passwordController.text}");
    debugPrint("Phone ${numberController.text}");

    final client = AuthenticationClient(dio, baseUrl: 'http://10.0.2.2:3000/');

    try {
      final user = await client.userControllerSignUp(body: signUpData);
      debugPrint("User registered!");

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroOnboardingPage()),
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
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
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
                    'assets/img/BB-1.png',
                    width: 150,
                  ),

                  const SizedBox(height: 30),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroOnboardingPage()),
                      );
                    },
                    child: const Text(
                      "Let's Get Started!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  LoginInput(
                    controller: nameController,
                    height: 45,
                    width: 325,
                    backgroundColor: const Color(0xFF700000),
                    placeholderInput: "Name",
                    icon: Icons.email,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  LoginInput(
                    controller: numberController,
                    height: 45,
                    width: 325,
                    backgroundColor: const Color(0xFF700000),
                    placeholderInput: "Number",
                    icon: Icons.lock,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  LoginInput(
                    controller: emailController,
                    height: 45,
                    width: 325,
                    backgroundColor: const Color(0xFF700000),
                    placeholderInput: "Email",
                    icon: Icons.lock,
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

                  const SizedBox(
                    height: 20,
                  ),

                  LoginInput(
                    controller: retypePasswordController,
                    height: 45,
                    width: 325,
                    backgroundColor: const Color(0xFF700000),
                    placeholderInput: "Re-type your Password",
                    isObscureText: true,
                    icon: Icons.lock,
                  ),

                  const Spacer(),

                  RichText(
                    textAlign:
                        TextAlign.center, // Aligns the text in the center
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

                  ElevatedButton(
                    onPressed: isLoading ? null : registerUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[850],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
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
          ),
        ),
      ),
    );
  }
}
