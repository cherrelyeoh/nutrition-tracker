import 'package:flutter/material.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard1.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard3.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPage2 extends StatefulWidget {
  const OnboardPage2({super.key});

  @override
  _OnboardPage2State createState() => _OnboardPage2State();
}

class _OnboardPage2State extends State<OnboardPage2> {
  String? selectedGender; // Tracks selected gender

  void _selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
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

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  debugPrint("Onboarding page 1..");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardPage1()),
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
              )
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "You Are A ...",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            color: const Color(0xFFFE6C6C),
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Text(
                  "Disclaimer: We collect your gender identity solely to ensure accurate BMI calculations",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),

          const Spacer(),

          // Male Selection
          GestureDetector(
            onTap: () => _selectGender('male'),
            child: Column(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          selectedGender == 'male' ? Colors.blue : Colors.white,
                      width: 4,
                    ),
                    color: selectedGender == 'male'
                        ? Colors.blue.withOpacity(0.2)
                        : Colors.transparent,
                  ),
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/img/gender-male.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Male',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          // Female Selection
          GestureDetector(
            onTap: () => _selectGender('female'),
            child: Column(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selectedGender == 'female'
                          ? Colors.pink
                          : Colors.white,
                      width: 4,
                    ),
                    color: selectedGender == 'female'
                        ? Colors.pink.withOpacity(0.2)
                        : Colors.transparent,
                  ),
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/img/gender-female.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Female',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
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
              debugPrint("Onboarding page 3..");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OnboardPage3()),
              );
            },
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.075),
        ],
      ),
    );
  }
}
