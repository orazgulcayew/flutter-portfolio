import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/glass_header.dart';
import 'package:portfolio/widgets/section_name_vertical.dart';
import 'package:portfolio/widgets/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height - GlassHeader.height,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionNameVertical(name: "MY SKILLS"),
          const Gap(40),
          Flexible(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: AppConstants.skills.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  maxCrossAxisExtent: 120),
              itemBuilder: (context, index) {
                return SkillCard(location: AppConstants.skills[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
