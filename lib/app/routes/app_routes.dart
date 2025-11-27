part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const INTRO = _Paths.INTRO;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const GAME = _Paths.GAME;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const INTRO = '/intro';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const GAME = '/game';
}
