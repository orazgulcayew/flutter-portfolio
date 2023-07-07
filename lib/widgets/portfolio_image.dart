import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class PortfolioImage extends StatefulWidget {
  const PortfolioImage({super.key});

  @override
  State<PortfolioImage> createState() => _PortfolioImageState();
}

class _PortfolioImageState extends State<PortfolioImage> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          transformAlignment: Alignment.center,
          duration: const Duration(milliseconds: 300),
          transform: isHovering
              ? Matrix4.diagonal3Values(1.2, 1.2, 1.0)
              : Matrix4.identity(),
          height: 240,
          width: 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: AppColors.primary)),
        ),
        AnimatedContainer(
          transformAlignment: Alignment.center,
          duration: const Duration(milliseconds: 300),
          transform: isHovering
              ? Matrix4.diagonal3Values(1.3, 1.3, 1.0)
              : Matrix4.diagonal3Values(1.1, 1.1, 1.0),
          height: 240,
          width: 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              border: Border.all(width: 1, color: AppColors.primary)),
        ),
        MouseRegion(
          onEnter: (value) {
            setState(() {
              isHovering = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovering = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transformAlignment: Alignment.center,
            transform: isHovering
                ? Matrix4.diagonal3Values(1.1, 1.1, 1.0)
                : Matrix4.identity(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                "https://avatars.githubusercontent.com/u/97003268?v=4",
                height: 240,
                width: 240,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
