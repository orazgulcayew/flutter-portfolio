import 'package:flutter/material.dart';
import 'package:portfolio/widgets/social_button.dart';

import '../constants/app_constants.dart';

class VerticalSocials extends StatelessWidget {
  const VerticalSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          AppConstants.urlsAndIcons.length,
          (index) {
            return SocialButton(urlIcon: AppConstants.urlsAndIcons[index]);
          },
        ),
      ],
    );
  }
}
