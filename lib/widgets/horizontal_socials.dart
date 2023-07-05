import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/section_name_horizontal.dart';
import 'package:portfolio/widgets/social_button.dart';

class HorizontalSocials extends StatelessWidget {
  const HorizontalSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionNameHorizontal(name: "FOLLOW ME"),
        const Gap(16),
        Row(
          children: [
            ...List.generate(
              AppConstants.urlsAndIcons.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child:
                      SocialButton(urlIcon: AppConstants.urlsAndIcons[index]),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
