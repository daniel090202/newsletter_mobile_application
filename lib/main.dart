import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/themes/app_themes.dart';
import 'package:newsletter_mobile_application/pages/home_page/home_navigation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Newsletter Mobile Application',
      debugShowCheckedModeBanner: false,
      // >>> Handle app themes based on system theme mode:
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      themeMode: ThemeMode.system,
      // >>> App routes:
      home: const HomeNavigationPage(),
    );
  }
}
