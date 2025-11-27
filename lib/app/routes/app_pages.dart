import 'package:get/get.dart';
import '../../modules/splash/splash_binding.dart';
import '../../modules/splash/splash_page.dart';
import '../../modules/intro/intro_binding.dart';
import '../../modules/intro/intro_page.dart';
import '../../modules/auth/login/login_binding.dart';
import '../../modules/auth/login/login_page.dart';
import '../../modules/auth/register/register_binding.dart';
import '../../modules/auth/register/register_page.dart';
import '../../modules/game/game_binding.dart';
import '../../modules/game/game_page.dart';
// import other pages...

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroPage(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.GAME,
      page: () => const GamePage(),
      binding: GameBinding(),
    ),
    // Add more routes...
  ];
}
