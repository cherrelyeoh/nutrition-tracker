import 'package:flutter/material.dart';
import 'package:fluttertest/pages/Login/register.dart';
import 'package:fluttertest/widgets/app_button_1.dart';

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/IntroPage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Text & Button section - 40% of the screen height
          Expanded(
            flex: 4, // 40% height
            child: Container(
              color:
                  Colors.grey[900], // Background color for the bottom section
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    "Welcome to Our App!\nLet's get to know you more",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center, // Centers both lines
                  ),
                  const SizedBox(height: 20),
                  Container(
                    color: const Color(0xFFFE6C6C), // Background color
                    padding: const EdgeInsets.all(16), // Optional padding
                    child: const Column(
                      mainAxisSize:
                          MainAxisSize.min, // Ensures it takes minimal space
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Please help asdfkj asdkjfl asd fjaklsdj fkljasdkljf klajsd kljfaslkdjf kljasdklfj klasjdklf",
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
                  AppButton1(
                    textColor: Colors.white,
                    backgroundColor: Colors.grey[850],
                    borderColor: Colors.white,
                    borderRadius: 50,
                    text: "Sign Up",
                    textSize: 20,
                    textWeight: FontWeight.w700,
                    height: 50,
                    width: 200,
                    onPressed: () {
                      debugPrint("Onboarding page 2..");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardPage1()),
                      );
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
