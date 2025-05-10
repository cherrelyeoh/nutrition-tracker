// onboarding_state.dart

class OnboardingState {
  const OnboardingState();
}

class OnboardingInitial extends OnboardingState {
  const OnboardingInitial();
}

class OnboardingData extends OnboardingState {
  final int? age;
  final double? weight;
  final double? height;
  final String? goal;

  const OnboardingData({
    this.age,
    this.weight,
    this.height,
    this.goal,
  });

  // Add copyWith method
  OnboardingData copyWith({
    int? age,
    double? weight,
    double? height,
    String? goal,
  }) {
    return OnboardingData(
      age: age ?? this.age,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      goal: goal ?? this.goal,
    );
  }
}
