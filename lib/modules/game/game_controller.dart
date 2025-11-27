import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../app/routes/app_pages.dart';

class GameController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Check if user is logged in
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      // Redirect to login if not authenticated
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
