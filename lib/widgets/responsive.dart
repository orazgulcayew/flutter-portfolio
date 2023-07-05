import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;

  final Widget desktop;
  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool hideMenu(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return mobile;
    } else {
      return desktop;
    }
  }
}
