import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/pages/UserOnboarding/goal_onboarding.dart';
import 'package:fluttertest/pages/UserOnboarding/profile_onboarding.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/selectable_button.dart';

class PhysicalOnboarding extends StatefulWidget {
  const PhysicalOnboarding({super.key});

  @override
  _PhysicalOnboardingState createState() => _PhysicalOnboardingState();
}

class _PhysicalOnboardingState extends State<PhysicalOnboarding> {
  String? selectedLevel; // Store selected level (e.g., Beginner, Intermediate)

  void _handleSelection(String level) {
    setState(() {
      selectedLevel = level;
    });
    debugPrint('$level selected!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.075),

          // Back Button
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GoalOnboarding(),
                      ));
                },
                child: SvgPicture.asset(
                  'assets/img/arrow-left.svg',
                  width: 12,
                  height: 12,
                ),
              ),
              const SizedBox(width: 20),
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

          const SizedBox(height: 20),
          const Text(
            "Physical Activity Level",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Text(
                  "We want to know your physical activity level for us to set you on the right track!",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),

          const Spacer(),

          SelectableContainer(
            text: 'Beginner',
            isSelected: selectedLevel == 'Beginner',
            selectedColor: const Color(0xFFFE6C6C),
            unselectedColor: Colors.grey[700],
            selectedTextColor: Colors.white,
            unselectedTextColor: Colors.white,
            fontSize: 18,
            onTap: () => _handleSelection('Beginner'),
          ),

          const SizedBox(height: 30),

          SelectableContainer(
            text: 'Intermediate',
            isSelected: selectedLevel == 'Intermediate',
            selectedColor: const Color(0xFFFE6C6C),
            unselectedColor: Colors.grey[700],
            selectedTextColor: Colors.white,
            unselectedTextColor: Colors.white,
            fontSize: 18,
            onTap: () => _handleSelection('Intermediate'),
          ),

          const SizedBox(height: 30),

          SelectableContainer(
            text: 'Advanced',
            isSelected: selectedLevel == 'Advanced',
            selectedColor: const Color(0xFFFE6C6C),
            unselectedColor: Colors.grey[700],
            selectedTextColor: Colors.white,
            unselectedTextColor: Colors.white,
            fontSize: 18,
            onTap: () => _handleSelection('Advanced'),
          ),

          const Spacer(),

          AppButton1(
            textColor: Colors.white,
            backgroundColor: Colors.grey[850],
            borderColor: Colors.white,
            borderRadius: 50,
            text: "Continue",
            textSize: 20,
            textWeight: FontWeight.w700,
            height: 50,
            width: 200,
            onPressed: () {
              debugPrint("Going to Profile Onboarding Page..");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileOnboarding(),
                ),
              );
            },
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.075),
        ],
      ),
    );
  }
}
