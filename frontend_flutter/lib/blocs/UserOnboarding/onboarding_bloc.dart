// onboarding_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_event.dart';
import 'package:fluttertest/blocs/UserOnboarding/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingInitial()) {
    on<UpdateUserDetails>(_onUpdateUserDetails);
    on<UpdateGoal>(_onUpdateGoal);
  }

  void _onUpdateUserDetails(
      UpdateUserDetails event, Emitter<OnboardingState> emit) {
    if (state is OnboardingData) {
      final current = state as OnboardingData;
      emit(current.copyWith(
        age: event.age,
        weight: event.weight,
        height: event.height,
      ));
    } else {
      emit(OnboardingData(
        age: event.age,
        weight: event.weight,
        height: event.height,
      ));
    }
  }

  void _onUpdateGoal(UpdateGoal event, Emitter<OnboardingState> emit) {
    if (state is OnboardingData) {
      final current = state as OnboardingData;
      emit(current.copyWith(
        goal: event.goal,
      ));
    } else {
      emit(OnboardingData(
        goal: event.goal,
      ));
    }
  }
}
