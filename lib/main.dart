import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_template/app/app.dart';

void main() async {
  await GetStorage.init();
  runApp(const App());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}
