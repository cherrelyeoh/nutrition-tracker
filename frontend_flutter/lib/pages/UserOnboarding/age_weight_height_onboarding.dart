import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_bloc.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_event.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_state.dart';
import 'package:fluttertest/pages/UserOnboarding/goal_onboarding.dart';
import 'package:fluttertest/widgets/app_button_1.dart';

class AgeWeightHeightOnboarding extends StatefulWidget {
  const AgeWeightHeightOnboarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgeWeightHeightOnboardingState createState() =>
      _AgeWeightHeightOnboardingState();
}

class _AgeWeightHeightOnboardingState extends State<AgeWeightHeightOnboarding> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  // bool _isNavigating = false;

  @override
  void dispose() {
    _ageController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  void _continueToNextPage() {
    final age = int.tryParse(_ageController.text) ?? 0;
    final weight = double.tryParse(_weightController.text) ?? 0.0;
    final height = double.tryParse(_heightController.text) ?? 0.0;

    context.read<OnboardingBloc>().add(
          UpdateUserDetails(
            age: age,
            weight: weight,
            height: height,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state is OnboardingData) {
          // _isNavigating = true;
          // print('User Details:');
          // print('Age: ${state.age}');
          // print('Weight: ${state.weight}');
          // print('Height: ${state.height}');

          // Navigate to next page *after* state is updated
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GoalOnboarding()),
            );
          });
        }
      },
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0), // Add horizontal padding
            child: Column(
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
                  "How Old Are You?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                    height: 10), // Reduced spacing between label and field

                TextField(
                  controller: _ageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your age',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),

                const Text(
                  "What's Your Weight?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                TextField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter weight in kg',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),

                const Text(
                  "What's Your Height?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                TextField(
                  controller: _heightController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter height in cm',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),

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
                  onPressed: _continueToNextPage,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.075),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
