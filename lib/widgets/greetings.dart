import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/styles/colors.dart';
import 'package:portfolio/widgets/horizontal_socials.dart';
import 'package:portfolio/widgets/portfolio_image.dart';
import 'package:portfolio/widgets/responsive.dart';

class HomeSectionGreetings extends StatelessWidget {
  const HomeSectionGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Responsive(
          mobile: buildMobileGreetings(), desktop: buildDesktopGreetings()),
    );
  }

  Widget buildMobileGreetings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Hello! I am",
          style: TextStyle(color: AppColors.primary, fontSize: 18),
        ),
        const SelectableText(
          "Oraz Gulchayew",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 42,
              height: 1),
        ),
        const Gap(16),
        const Text(
          "Flutter Developer",
          style: TextStyle(
              color: AppColors.primary,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            const Text(
              "Mobile developer",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            buildDot(),
            const Text(
              "Programmer",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            buildDot(),
            const Text(
              "Digital art lover",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        const Gap(24),
        buildActions(),
        const Gap(48),
        const SizedBox(width: 200, height: 200, child: PortfolioImage()),
        const Gap(48),
        const HorizontalSocials()
      ],
    );
  }

  Widget buildDesktopGreetings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hello! I am",
          style: TextStyle(color: AppColors.primary, fontSize: 20),
        ),
        const SelectableText(
          "Oraz Gulchayew",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 60,
              height: 1),
        ),
        const Gap(16),
        const Text(
          "Flutter Developer",
          style: TextStyle(
              color: AppColors.primary,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            const Text(
              "Mobile developer",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            buildDot(),
            const Text(
              "Programmer",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            buildDot(),
            const Text(
              "Digital art lover",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        const Gap(24),
        buildActions()
      ],
    );
  }

  buildDot() {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration:
          const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
    );
  }

  Widget buildActions() {
    return Responsive(
      desktop: Row(
        children: [
          FilledButton(
              style: FilledButton.styleFrom(
                  minimumSize: const Size(160, 70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: const Text(
                "Resume",
                style: TextStyle(fontSize: 18),
              )),
          const Gap(12),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(minimumSize: const Size(160, 70)),
              child: const Text(
                "About me",
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
      mobile: Row(
        children: [
          FilledButton(
              style: FilledButton.styleFrom(
                  minimumSize: const Size(130, 54),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: const Text(
                "Resume",
                style: TextStyle(fontSize: 18),
              )),
          const Gap(12),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(minimumSize: const Size(130, 54)),
              child: const Text(
                "About me",
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
