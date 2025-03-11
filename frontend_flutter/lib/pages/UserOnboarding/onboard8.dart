import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Login/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard7.dart';
import 'package:fluttertest/pages/UserOnboarding/onboard8.dart';
import 'package:fluttertest/widgets/app_button_1.dart';

class OnboardPage8 extends StatefulWidget {
  const OnboardPage8({super.key});

  @override
  _OnboardPage8State createState() => _OnboardPage8State();
}

class _OnboardPage8State extends State<OnboardPage8> {
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
                  debugPrint("Onboarding page 7..");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardPage7()),
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
            "Fill Your Profile",
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
                  "We want to know your fitness and health goals for us to set you on the right track!",
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
                  builder: (context) => const LoginPage(), // Pass age if needed
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
