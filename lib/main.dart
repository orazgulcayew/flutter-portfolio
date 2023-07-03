import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/styles/app_style.dart';

void main() {
  runApp(const MyPortfolioApp());
}

AppStyles theme = AppStyles();

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImages(context);

    return MaterialApp(
      title: "Oraz's Portfolio",
      debugShowCheckedModeBanner: false,
      theme: theme.themeData,
      home: const HomePage(),
    );
  }

  void precacheImages(BuildContext context) {
    precacheImage(const AssetImage('assets/images/logo.png'), context);
  }
}
