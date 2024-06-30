import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_template/app/app_localizations.dart';
import 'package:getx_template/presentation/resources/theme_manager.dart';
import 'package:getx_template/presentation/screens/splash_screen.dart';

Locale myLocale = const Locale('en');

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      locale: myLocale,
      home: const SplashScreen(),
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: AppTheme.themeMode,
    );
  }
}

bool checkCurrentLocale() {
  return myLocale == const Locale('en');
}
