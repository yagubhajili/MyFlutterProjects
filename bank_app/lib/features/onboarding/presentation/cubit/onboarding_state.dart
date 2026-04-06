part of 'onboarding_cubit.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingInitial extends OnboardingState {
  final int currentPage;
  OnboardingInitial({this.currentPage = 0});
}

final class OnboardingComplete extends OnboardingState {}
