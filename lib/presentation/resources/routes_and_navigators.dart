import 'package:flutter/material.dart';
import 'package:getx_template/app/app.dart';
import 'package:getx_template/presentation/home_page.dart';
import 'package:getx_template/presentation/screens/splash_screen.dart';

class NamedRoutes {
  static String material = "material";
  static String home = "home";
  static String splash = "splash";
  static Map<String, Widget Function(BuildContext)> basicRoutes = {
    material: (context) => const App(),
    home: (context) => const MyHomePage(),
    splash: (context) => const SplashScreen()
  };
}

extension MyNavigator on BuildContext {
  static goToPage(BuildContext context, Widget page) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => page)));
  }
}
