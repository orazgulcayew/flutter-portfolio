import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/styles/colors.dart';
import 'package:portfolio/widgets/responsive.dart';

import '../../widgets/section_name_vertical.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: buildMobile(), desktop: buildDesktop(context));
  }

  buildMobile() {
    return const SizedBox();
  }

  buildDesktop(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: Align(
        alignment: Alignment.centerRight,
        child: FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                AppConstants.programming,
                width: Responsive.isTablet(context) ? 260 : 320,
              ),
              const Gap(40),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoCard(title: 'title', content: 'content'),
                      infoCard(title: 'title', content: 'content'),
                      infoCard(title: 'title', content: 'content'),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    child: aboutMeText(),
                  ),
                ],
              ),
              const Gap(40),
              const SectionNameVertical(name: 'ABOUT ME')
            ],
          ),
        ),
      ),
    );
  }

  infoCard({required String title, required String content}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: AppColors.primary)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary),
              ),
              const Icon(LineAwesome.graduation_cap_solid)
            ],
          ),
          Text(content),
        ],
      ),
    );
  }

  static Widget aboutMeText() {
    return const Text(
      AppConstants.aboutMe,
      style: TextStyle(fontSize: 20, height: 1.8, color: Colors.white),
    );
  }
}
