import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard4.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard6.dart';
import 'package:fluttertest/widgets/app_button_1.dart';

class OnboardPage5 extends StatefulWidget {
  const OnboardPage5({super.key});

  @override
  _OnboardPage5State createState() => _OnboardPage5State();
}

class _OnboardPage5State extends State<OnboardPage5> {
  final ScrollController _scrollController = ScrollController();
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
                  debugPrint("Onboarding page 4..");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardPage4()),
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
            "What is Your Height?",
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
                  "Disclaimer: We collect your height solely to ensure accurate BMI calculations",
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

          // AGE PICKER
          SizedBox(
            height: 100, // Adjust height as needed
            child: Center(
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: 101, // Numbers 0 - 100
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedAge;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAge = index;
                        double itemWidth = 60.0; // Adjust based on actual width
                        double screenWidth = MediaQuery.of(context).size.width;
                        double scrollTo = (index * itemWidth) -
                            (screenWidth / 2) +
                            (itemWidth / 2);

                        _scrollController.animateTo(
                          scrollTo,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                    child: Container(
                      width: 60,
                      alignment: Alignment.center,
                      decoration: isSelected
                          ? BoxDecoration(
                              color: Colors.red, // Highlight selected age
                              borderRadius: BorderRadius.circular(10),
                            )
                          : null,
                      child: Text(
                        index.toString(),
                        style: TextStyle(
                          fontSize: isSelected ? 32 : 24,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.grey[400],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
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
              debugPrint("Onboard Page 6...");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const OnboardPage6(), // Pass age if needed
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
