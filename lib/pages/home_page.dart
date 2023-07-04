import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';
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
              itemCount: 500,
              itemBuilder: (context, index) => Container(
                    color: AppColors.primary,
                    height: 120,
                    margin: const EdgeInsets.all(12),
                    child: Center(
                        child: Text(
                      index.toString(),
                      style: const TextStyle(color: Colors.black),
                    )),
                  ),
              padding: const EdgeInsets.only(top: 80),
              itemScrollController: itemScrollController),
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
        scrollTo(150);
        break;
      case HeaderActionTypes.skills:
        scrollTo(14);
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
