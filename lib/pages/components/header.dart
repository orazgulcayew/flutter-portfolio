import 'package:flutter/material.dart';
import 'package:portfolio/widgets/glass_header.dart';

class AppHeader extends StatelessWidget {
  final Widget body;
  const AppHeader({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        body,
        const GlassHeader(
          title: "Oraz Gulchayew",
          actions: [],
        )
      ],
    );
  }
}
