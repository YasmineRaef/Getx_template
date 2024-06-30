import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_template/app/app.dart';

void main() {
  runApp(const App());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: []); //full screen
}
