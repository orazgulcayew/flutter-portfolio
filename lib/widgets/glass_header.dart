import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/widgets/responsive.dart';

import '../styles/colors.dart';

class GlassHeader extends StatelessWidget {
  final String? title;
  final Function(HeaderActionTypes) onActionClick;

  const GlassHeader({super.key, this.title, required this.onActionClick});

  static const double height = 70;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.background.withOpacity(0.1),
          ),
          height: height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Responsive.hideMenu(context)
                ? buildDesktopRow()
                : buildMobileRow(),
          ),
        ),
      ),
    );
  }

  Row buildMobileRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(title ?? "",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              BoxIcons.bx_menu,
              color: Colors.white,
            )),
      ],
    );
  }

  Widget buildDesktopRow() {
    return Row(
      children: [
        Text(title ?? "",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        const Spacer(),
        TextButton.icon(
            onPressed: () {
              onActionClick.call(HeaderActionTypes.about);
            },
            icon: const Icon(
              BoxIcons.bxs_user,
              size: 20,
            ),
            label: const Text("ABOUT")),
        TextButton.icon(
            onPressed: () {
              onActionClick.call(HeaderActionTypes.skills);
            },
            icon: const Icon(
              BoxIcons.bxs_graduation,
              size: 20,
            ),
            label: const Text("SKILLS")),
        TextButton.icon(
            onPressed: () {
              onActionClick.call(HeaderActionTypes.portfolio);
            },
            icon: const Icon(
              BoxIcons.bx_book_reader,
              size: 20,
            ),
            label: const Text("PORTFOLIO")),
        TextButton.icon(
            onPressed: () {
              onActionClick.call(HeaderActionTypes.contact);
            },
            icon: const Icon(
              BoxIcons.bx_message_square_detail,
              size: 20,
            ),
            label: const Text("CONTACT")),
        const Gap(16),
        OutlinedButton.icon(
            onPressed: () {
              onActionClick.call(HeaderActionTypes.resume);
            },
            icon: const Icon(
              BoxIcons.bx_download,
              size: 20,
            ),
            label: const Text("RESUME"))
      ],
    );
  }
}

enum HeaderActionTypes { about, skills, contact, resume, portfolio }
