import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard6.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard8.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/onboard7_button.dart';

class OnboardPage7 extends StatefulWidget {
  const OnboardPage7({super.key});

  @override
  _OnboardPage7State createState() => _OnboardPage7State();
}

class _OnboardPage7State extends State<OnboardPage7> {
  final ScrollController _scrollController = ScrollController();
  bool isSelected = false; // Track selection state
  int selectedAge = 25; // Default age

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
                  debugPrint("Onboarding page 6..");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardPage6()),
                  );
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

          // Disclaimer
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
            selectedColor: Colors.yellow,
            unselectedColor: Colors.white,
            selectedTextColor: Colors.black,
            unselectedTextColor: const Color(0xFFFE6C6C),
            onTap: () {
              debugPrint("Beginner selected!");
            },
          ),

          const SizedBox(height: 40),

          SelectableContainer(
            text: 'Intermediate',
            selectedColor: Colors.yellow,
            unselectedColor: Colors.white,
            selectedTextColor: Colors.black,
            unselectedTextColor: const Color(0xFFFE6C6C),
            onTap: () {
              debugPrint("Intermediate selected!");
            },
          ),

          const SizedBox(height: 40),

          SelectableContainer(
            text: 'Advanced',
            selectedColor: Colors.yellow,
            unselectedColor: Colors.white,
            selectedTextColor: Colors.black,
            unselectedTextColor: const Color(0xFFFE6C6C),
            onTap: () {
              debugPrint("Advanced selected!");
            },
          ),

          const Spacer(),

          // Continue Button
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
              debugPrint("Onboard Page 9...");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const OnboardPage8(), // Pass age if needed
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
