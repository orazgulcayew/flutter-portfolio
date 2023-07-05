import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../styles/colors.dart';

class SectionNameVertical extends StatelessWidget {
  const SectionNameVertical({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(8),
        const SizedBox(
          height: 120,
          child: VerticalDivider(
            width: 4,
            thickness: 4,
            color: AppColors.primary,
          ),
        ),
        const Gap(8),
        RotatedBox(
          quarterTurns: -45,
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
