import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:fluttertest/pages/UserOnboarding/physical_onboarding.dart';
import 'package:fluttertest/widgets/app_button_1.dart';

class ProfileOnboarding extends StatefulWidget {
  const ProfileOnboarding({super.key});

  @override
  _ProfileOnboardingState createState() => _ProfileOnboardingState();
}

class _ProfileOnboardingState extends State<ProfileOnboarding> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();

  Widget _buildTextField(
      String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back button
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint("Onboarding page 7..");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PhysicalOnboarding(),
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/img/arrow-left.svg',
                        width: 12,
                        height: 12,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Back',
                      style: TextStyle(
                        color: Color(0xFFFE6C6C),
                        fontSize: 15,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                const Center(
                  child: Text(
                    "Fill Your Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "We want to know your fitness and health goals for us to set you on the right track!",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40),

                _buildTextField(
                    "Full Name", "Enter your name", _nameController),
                _buildTextField(
                    "Nickname", "Enter your nickname", _nicknameController),

                const SizedBox(height: 30),

                Center(
                  child: AppButton1(
                    textColor: Colors.black,
                    backgroundColor: Colors.yellow,
                    borderColor: Colors.white,
                    borderRadius: 50,
                    text: "Start",
                    textSize: 20,
                    textWeight: FontWeight.w700,
                    height: 50,
                    width: 200,
                    onPressed: () {
                      debugPrint("Routing back to login page..");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
