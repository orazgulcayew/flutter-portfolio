import 'package:flutter/material.dart';
import 'package:portfolio/widgets/greetings.dart';
import 'package:portfolio/widgets/responsive.dart';
import 'package:portfolio/widgets/verical_socials.dart';

import '../../widgets/portfolio_image.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      width: size.width,
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
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: const VerticalSocials(),
                    ),
                  const HomeSectionGreetings(),
                  if (!Responsive.isMobile(context))
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
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
