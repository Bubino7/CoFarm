import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/routes/app_pages.dart';

class IntroController extends GetxController {
  final currentPage = 0.obs;
  final PageController pageController = PageController();

  // Intro pages content
  final introPages = [
    {
      'title': 'Welcome to CoFarm!',
      'description': 'A cozy cooperative farming experience where you and your friends build the farm of your dreams together.',
      'icon': Icons.eco,
    },
    {
      'title': 'Grow Together',
      'description': 'Plant crops, raise animals, and expand your farm with friends in real-time multiplayer gameplay.',
      'icon': Icons.people,
    },
    {
      'title': 'Build Your Dream',
      'description': 'Customize your farm, decorate your space, and create the perfect farming paradise.',
      'icon': Icons.home,
    },
  ];

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < introPages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      goToAuth();
    }
  }

  void skipIntro() {
    goToAuth();
  }

  void goToAuth() {
    Get.toNamed(Routes.LOGIN);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
