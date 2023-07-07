import 'package:flutter/material.dart';
import 'package:portfolio/pages/sections/about_section.dart';
import 'package:portfolio/pages/sections/home_section.dart';
import 'package:portfolio/pages/sections/skills_section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../widgets/glass_header.dart';

final ItemScrollController itemScrollController = ItemScrollController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
              itemCount: 20,
              padding: const EdgeInsets.only(top: 80),
              itemScrollController: itemScrollController,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const HomeSection();
                } else if (index == 1) {
                  return const AboutSection();
                } else if (index == 2) {
                  return const SkillsSection();
                } else {
                  return const SizedBox();
                }
              }),
          GlassHeader(
            title: "Oraz Gulchayew",
            onActionClick: (type) {
              handleActionClick(type);
            },
          )
        ],
      ),
    );
  }

  void handleActionClick(HeaderActionTypes type) {
    switch (type) {
      case HeaderActionTypes.about:
        scrollTo(1);
        break;
      case HeaderActionTypes.skills:
        scrollTo(2);
        break;
      case HeaderActionTypes.contact:
        scrollTo(24);
        break;
      case HeaderActionTypes.resume:
        scrollTo(255);
        break;
      case HeaderActionTypes.portfolio:
        scrollTo(500);
        break;
    }
  }

  void scrollTo(int index) {
    itemScrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic);
  }
}
