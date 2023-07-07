import 'dart:math';

import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.location});
  final String location;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: AnimateGradient(
            primaryBegin: Alignment.topLeft,
            primaryEnd: Alignment.bottomLeft,
            secondaryBegin: Alignment.bottomLeft,
            secondaryEnd: Alignment.topRight,
            duration:
                Duration(milliseconds: (Random().nextInt(500) + 400) * 10),
            primaryColors: const [
              AppColors.primary,
              Color.fromARGB(255, 87, 246, 119),
              AppColors.background,
            ],
            secondaryColors: const [
              Colors.white,
              Color.fromARGB(255, 119, 20, 240),
              Color.fromARGB(255, 6, 107, 189),
            ],
            child: const SizedBox(
              width: 120,
              height: 120,
            ),
          ),
        ),
        // CustomPaint(
        //   painter: DartIcon(),
        //   size: const Size(40, 40),
        // )
        Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.background.withOpacity(0.95)),
          child: Image.network(location),
        ),
      ],
    );
  }
}
