import 'package:airplane/ui/pages/get_started/get_started_page.dart';
import 'package:airplane/ui/pages/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  //static variables
  static const String index = '/';
  static const String getStarted = '/get-started';

  static final routes = <String, WidgetBuilder>{
    index: (BuildContext context) => const SplashPage(),
    getStarted: (BuildContext context) => const GetStartedPage(),
  };
}
