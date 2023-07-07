import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widgets/glass_header.dart';
import 'package:portfolio/widgets/responsive.dart';
import 'package:portfolio/widgets/section_name_vertical.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height - GlassHeader.height,
      child: Responsive(
          mobile: buildMobile(),
          desktop: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: buildDesktop(),
          )),
    );
  }

  buildMobile() {
    return const SizedBox();
  }

  buildDesktop() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [aboutMeText(), const SectionNameVertical(name: 'ABOUT ME')],
      ),
    );
  }

  experienceCard({
    required String title,
  }) {
    return Container(
      child: Column(
        children: [
          Text(title),
          Text(title),
        ],
      ),
    );
  }

  Widget aboutMeText() {
    return const Flexible(
      child: Text(
        AppConstants.aboutMe,
        style: TextStyle(fontSize: 16, height: 2),
      ),
    );
  }
}
