import 'package:daytrade/base/base_vm.dart';

class OnboardingViewModel extends BaseViewModel{
    onboarding() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    getStarted=true;
    notifyListeners();

  }
}