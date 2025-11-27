import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_colors.dart';
import 'game_controller.dart';

class GamePage extends GetView<GameController> {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pearlBeige,
      appBar: AppBar(
        title: const Text('CoFarm'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: controller.logout,
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to CoFarm!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.darkSpruce,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Game implementation starts here',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.coffeeBean,
              ),
            ),
            const SizedBox(height: 32),
            // Unity integration placeholder
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.palmLeaf.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.sports_esports,
                    size: 64,
                    color: AppColors.palmLeaf,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Unity Game View\n(Coming Soon)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.darkSpruce,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
