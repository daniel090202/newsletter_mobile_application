import 'package:flutter/material.dart';
import 'package:newsletter_mobile_application/pages/home_page/home_page.dart';
import 'package:newsletter_mobile_application/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newsletter Mobile Application',
      debugShowCheckedModeBanner: false,
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
