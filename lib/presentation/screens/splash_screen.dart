import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getx_template/app/app_localizations.dart';
import 'package:getx_template/presentation/home_page.dart';
import 'package:getx_template/presentation/resources/routes_and_navigators.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => MyNavigator.goToPage(context, const MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 190, 152, 255),
        body: Center(child: Text("splash".translateS(context))));
  }
}