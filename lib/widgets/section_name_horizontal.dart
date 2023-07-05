import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../styles/colors.dart';

class SectionNameHorizontal extends StatelessWidget {
  const SectionNameHorizontal({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 90,
          child: Divider(
            thickness: 2,
            color: AppColors.primary,
          ),
        ),
        const Gap(8),
        Text(
          name,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
        const Gap(8),
        const SizedBox(
          width: 90,
          child: Divider(
            thickness: 2,
            color: AppColors.primary,
          ),
        )
      ],
    );
  }
}
