import 'package:airplane/ui/pages/bonus/bonus_page.dart';
import 'package:airplane/ui/pages/get_started/get_started_page.dart';
import 'package:airplane/ui/pages/main_page/main_page.dart';
import 'package:airplane/ui/pages/sign_up/sign_up_page.dart';
import 'package:airplane/ui/pages/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  //static variables
  static const String index = '/';
  static const String getStarted = '/get-started';
  static const String signUp = '/sign-up';
  static const String bonus = '/bonus';
  static const String main = '/main';

  static final routes = <String, WidgetBuilder>{
    index: (BuildContext context) => const SplashPage(),
    getStarted: (BuildContext context) => const GetStartedPage(),
    signUp: (BuildContext context) => const SignUpPage(),
    bonus: (BuildContext context) => const BonusPage(),
    main: (BuildContext context) => const MainPage(),
  };
}
