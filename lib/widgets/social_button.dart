import 'package:flutter/material.dart';
import 'package:portfolio/pages/models/url_icon.dart';
import 'package:portfolio/styles/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key, required this.urlIcon});

  final UrlIcon urlIcon;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      hoverColor: AppColors.primary.withOpacity(0.2),
      onTap: () async {
        await launchUrl(Uri.parse(widget.urlIcon.url),
            webOnlyWindowName: "_blank");
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(widget.urlIcon.iconData),
      ),
    );
  }
}
