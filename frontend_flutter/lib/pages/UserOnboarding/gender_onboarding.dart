// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertest/pages/UserOnboarding/age_weight_height_onboarding.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_bloc.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_state.dart';

class GenderOnboarding extends StatefulWidget {
  const GenderOnboarding({super.key});

  @override
  _GenderOnboardingState createState() => _GenderOnboardingState();
}

class _GenderOnboardingState extends State<GenderOnboarding> {
  @override
  void initState() {
    super.initState();
  }

  void _selectGender(String gender) {
    // Access the bloc and add event
    // BlocProvider.of<OnboardingBloc>(context).add(UpdateGender(gender));
    debugPrint("Stopped implementation");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          // Get current gender from state
          String? currentGender;
          // if (state is OnboardingUpdated) {
          //   currentGender = state.gender;
          // }
          return Column(
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
                      debugPrint("Going back to intro...");
                      Navigator.pop(context);
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
                          color: currentGender == 'male'
                              ? Colors.blue
                              : Colors.white,
                          width: 4,
                        ),
                        color: currentGender == 'male'
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
                          color: currentGender == 'female'
                              ? Colors.pink
                              : Colors.white,
                          width: 4,
                        ),
                        color: currentGender == 'female'
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
                    MaterialPageRoute(
                        builder: (context) =>
                            const AgeWeightHeightOnboarding()),
                  );
                },
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            ],
          );
        },
      ),
    );
  }
}
