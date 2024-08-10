import 'package:flutter/material.dart';
import 'package:flutter_theme/screens/onboarding/onboarding.dart';
import 'package:flutter_theme/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const OnBoarding(),
    );
  }
}