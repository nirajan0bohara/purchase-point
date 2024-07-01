//use this class to setup themes, initial Bindings, only animations..
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchasepoint/features/authentication/screens/onboarding/onboarding.dart';
import 'features/personalization/screens/home_page.dart';
import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
