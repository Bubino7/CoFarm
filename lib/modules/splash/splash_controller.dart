import 'package:get/get.dart';

class SplashController extends GetxController {
  bool _hasStarted = false;

  void startNavigation() {
    if (_hasStarted) return;
    _hasStarted = true;
    _navigateToNext();
  }

  Future<void> _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    navigateToIntro();
  }

  void navigateToIntro() {
    Get.offAllNamed('/intro');
  }
}
