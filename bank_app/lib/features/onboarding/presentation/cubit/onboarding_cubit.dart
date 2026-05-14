import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  void updateCurrentPage(int page) {
    if (state is OnboardingInitial) {
      emit(OnboardingInitial(currentPage: page));
    }
  }

  void completeOnboarding() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('onboardingComplete', true);
    emit(OnboardingComplete());
  }
}
