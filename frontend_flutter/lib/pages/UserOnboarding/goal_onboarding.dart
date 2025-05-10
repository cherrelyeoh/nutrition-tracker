import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertest/pages/UserOnboarding/physical_onboarding.dart';
import 'package:fluttertest/pages/UserOnboarding/age_weight_height_onboarding.dart';
import 'package:fluttertest/widgets/app_button_1.dart';
import 'package:fluttertest/widgets/selectable_button.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_bloc.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_event.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_state.dart';

class GoalOnboarding extends StatefulWidget {
  const GoalOnboarding({super.key});

  @override
  _GoalOnboardingState createState() => _GoalOnboardingState();
}

class _GoalOnboardingState extends State<GoalOnboarding> {
  String? selectedGoal;

  void _handleGoal(String goal) {
    setState(() {
      selectedGoal = goal;
    });

    // Dispatch UpdateGoal event to the BLoC
    context.read<OnboardingBloc>().add(UpdateGoal(goal: goal));

    debugPrint('$goal selected and dispatched to BLoC!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Header with Back Button
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AgeWeightHeightOnboarding()),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/img/arrow-left.svg',
                      width: 12,
                      height: 12,
                    ),
                  ),
                  const SizedBox(width: 12),
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

              const SizedBox(height: 32),

              // Title
              const Text(
                "What is Your Goal?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              // Description
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "We want to know your fitness and health goals for us to set you on the right track!",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 40),

              // Options
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableContainer(
                        text: 'Lose Weight',
                        isSelected: selectedGoal == 'Lose Weight',
                        selectedColor: const Color(0xFFFE6C6C),
                        unselectedColor: Colors.grey[700],
                        selectedTextColor: Colors.white,
                        unselectedTextColor: Colors.white,
                        fontSize: 18,
                        onTap: () => _handleGoal('Lose Weight'),
                      ),

                      const SizedBox(height: 20),

                      SelectableContainer(
                        text: 'Gain Weight',
                        isSelected: selectedGoal == 'Gain Weight',
                        selectedColor: const Color(0xFFFE6C6C),
                        unselectedColor: Colors.grey[700],
                        selectedTextColor: Colors.white,
                        unselectedTextColor: Colors.white,
                        fontSize: 18,
                        onTap: () => _handleGoal('Gain Weight'),
                      ),

                      const SizedBox(height: 20),

                      SelectableContainer(
                        text: 'Gain Muscle',
                        isSelected: selectedGoal == 'Gain Muscle',
                        selectedColor: const Color(0xFFFE6C6C),
                        unselectedColor: Colors.grey[700],
                        selectedTextColor: Colors.white,
                        unselectedTextColor: Colors.white,
                        fontSize: 18,
                        onTap: () => _handleGoal('Gain Muscle'),
                      ),

                      const SizedBox(height: 20),

                      SelectableContainer(
                        text: 'General Fitness',
                        isSelected: selectedGoal == 'General Fitness',
                        selectedColor: const Color(0xFFFE6C6C),
                        unselectedColor: Colors.grey[700],
                        selectedTextColor: Colors.white,
                        unselectedTextColor: Colors.white,
                        fontSize: 18,
                        onTap: () => _handleGoal('General Fitness'),
                      ),

                      const SizedBox(height: 20),

                      SelectableContainer(
                        text: 'Others',
                        isSelected: selectedGoal == 'Others',
                        selectedColor: const Color(0xFFFE6C6C),
                        unselectedColor: Colors.grey[700],
                        selectedTextColor: Colors.white,
                        unselectedTextColor: Colors.white,
                        fontSize: 18,
                        onTap: () => _handleGoal('Others'),
                      ),
                      // Add more options if needed
                    ],
                  ),
                ),
              ),

              // Continue Button - Placed outside Expanded
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: SizedBox(
                  width: 200,
                  child: AppButton1(
                    textColor: Colors.white,
                    backgroundColor: Colors.grey[850]!,
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
                          builder: (context) => const PhysicalOnboarding(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
