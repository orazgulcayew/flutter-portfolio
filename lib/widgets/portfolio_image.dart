import 'package:flutter/material.dart';

class PortfolioImage extends StatefulWidget {
  const PortfolioImage({super.key});

  @override
  State<PortfolioImage> createState() => _PortfolioImageState();
}

class _PortfolioImageState extends State<PortfolioImage> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onHover: (value) {
          setState(() {
            isHovering = value;
          });
        },
        child: Image.network(
          "https://avatars.githubusercontent.com/u/97003268?v=4",
          height: 240,
          width: 240,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
