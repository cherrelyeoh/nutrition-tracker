abstract class OnboardingEvent {}

class UpdateUserDetails extends OnboardingEvent {
  final int age;
  final double weight;
  final double height;

  UpdateUserDetails(
      {required this.age, required this.weight, required this.height});
}

class UpdateGoal extends OnboardingEvent {
  final String goal;

  UpdateGoal({required this.goal});
}
