import 'package:flutter/material.dart';
import 'package:portfolio/pages/components/header.dart';
import 'package:portfolio/styles/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        body: ListView.builder(
          padding: const EdgeInsets.only(top: 80),
          itemBuilder: (context, index) {
            return Container(
              color: AppColors.primary,
              height: 120,
              margin: const EdgeInsets.all(12),
            );
          },
        ),
      ),
    );
  }
}
