import 'package:flutter/material.dart';
import 'package:portfolio/widgets/glass_header.dart';
import 'package:portfolio/widgets/greetings.dart';
import 'package:portfolio/widgets/responsive.dart';
import 'package:portfolio/widgets/verical_socials.dart';

import '../../widgets/portfolio_image.dart';
import '../../widgets/section_name_vertical.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height - GlassHeader.height,
      width: size.width,
      padding: const EdgeInsets.only(bottom: 60),
      child: Align(
        alignment: Responsive.isMobile(context)
            ? Alignment.center
            : Alignment.centerLeft,
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  if (!Responsive.isMobile(context))
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.07),
                      child: Column(
                        children: const [
                          VerticalSocials(),
                          SectionNameVertical(name: "FOLLOW ME"),
                        ],
                      ),
                    ),
                  const HomeSectionGreetings(),
                  if (!Responsive.isMobile(context))
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 54),
                      child: PortfolioImage(),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
