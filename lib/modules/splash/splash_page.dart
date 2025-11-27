import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_colors.dart';
import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger navigation after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.startNavigation();
    });

    return Scaffold(
      backgroundColor: AppColors.pearlBeige,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with fade-in animation
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              curve: Curves.easeInOut,
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.scale(
                    scale: 0.8 + (value * 0.2),
                    child: child,
                  ),
                );
              },
              child: Image.asset(
                'assets/logos/CoFarm_logo.png',
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 40),
            // Loading indicator
            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.palmLeaf),
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
