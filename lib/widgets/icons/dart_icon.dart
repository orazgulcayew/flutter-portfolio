import 'package:flutter/material.dart';

class DartIcon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xff00D2B8);
    path = Path();
    path.lineTo(size.width * 0.39, size.height * 0.39);
    path.cubicTo(size.width * 0.39, size.height * 0.39, size.width * 0.3,
        size.height * 0.3, size.width * 0.3, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.3, size.width * 0.3,
        size.height * 0.96, size.width * 0.3, size.height * 0.96);
    path.cubicTo(size.width * 0.3, size.height * 0.96, size.width * 0.3,
        size.height, size.width * 0.3, size.height);
    path.cubicTo(size.width * 0.3, size.height, size.width * 0.3,
        size.height * 1.02, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.31, size.height * 1.04, size.width * 1.04,
        size.height * 1.3, size.width * 1.04, size.height * 1.3);
    path.cubicTo(size.width * 1.04, size.height * 1.3, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 0.39,
        size.height * 0.39, size.width * 0.39, size.height * 0.39);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = const Color(0xff55DDCA);
    path = Path();
    path.lineTo(size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.31, size.height * 1.04, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.31, size.height * 1.04, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.31, size.height * 1.04, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.31, size.height * 1.04, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.31, size.height * 1.04, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.lineTo(size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.04,
        size.height * 1.3, size.width * 1.04, size.height * 1.3);
    path.cubicTo(size.width * 1.04, size.height * 1.3, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.32, size.height * 1.09, size.width * 0.35,
        size.height * 1.15, size.width * 0.39, size.height * 1.18);
    path.cubicTo(size.width * 0.39, size.height * 1.18, size.width * 0.62,
        size.height * 1.42, size.width * 0.62, size.height * 1.42);
    path.cubicTo(size.width * 0.62, size.height * 1.42, size.width * 1.15,
        size.height * 1.42, size.width * 1.15, size.height * 1.42);
    path.cubicTo(size.width * 1.15, size.height * 1.42, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    canvas.drawPath(path, paint);

    // Path number 3

    paint.color = const Color(0xff0081C6);
    path = Path();
    path.lineTo(size.width * 0.02, size.height * 0.72);
    path.cubicTo(-0.01, size.height * 0.75, size.width * 0.01,
        size.height * 0.8, size.width * 0.04, size.height * 0.84);
    path.cubicTo(size.width * 0.04, size.height * 0.84, size.width / 5,
        size.height, size.width / 5, size.height);
    path.cubicTo(size.width / 5, size.height, size.width * 0.31,
        size.height * 1.04, size.width * 0.31, size.height * 1.04);
    path.cubicTo(size.width * 0.3, size.height * 1.02, size.width * 0.3,
        size.height, size.width * 0.3, size.height);
    path.cubicTo(size.width * 0.3, size.height, size.width * 0.3,
        size.height * 0.96, size.width * 0.3, size.height * 0.96);
    path.cubicTo(size.width * 0.3, size.height * 0.96, size.width * 0.3,
        size.height * 0.3, size.width * 0.3, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.3, size.width * 0.02,
        size.height * 0.72, size.width * 0.02, size.height * 0.72);
    path.cubicTo(size.width * 0.02, size.height * 0.72, size.width * 0.02,
        size.height * 0.72, size.width * 0.02, size.height * 0.72);
    canvas.drawPath(path, paint);

    // Path number 4

    paint.color = const Color(0xff0079B3);
    path = Path();
    path.lineTo(size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.03, size.height * 0.3, size.width,
        size.height * 0.3, size.width, size.height * 0.3);
    path.cubicTo(size.width, size.height * 0.3, size.width * 0.96,
        size.height * 0.29, size.width * 0.96, size.height * 0.29);
    path.cubicTo(size.width * 0.96, size.height * 0.29, size.width * 0.3,
        size.height * 0.3, size.width * 0.3, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.3, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.3,
        size.height * 1.03, size.width * 1.3, size.height * 1.03);
    path.cubicTo(size.width * 1.3, size.height * 1.03, size.width * 1.04,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = const Color(0xff00A4E4);
    path = Path();
    path.lineTo(size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width * 1.04,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width * 1.04,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width * 1.04,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width * 1.04,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width * 1.04,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    path.lineTo(size.width * 1.19, size.height * 0.38);
    path.cubicTo(size.width * 1.16, size.height * 0.35, size.width * 1.1,
        size.height * 0.32, size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width * 1.3,
        size.height * 1.03, size.width * 1.3, size.height * 1.03);
    path.cubicTo(size.width * 1.3, size.height * 1.03, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.22,
        size.height * 1.21, size.width * 1.22, size.height * 1.21);
    path.cubicTo(size.width * 1.22, size.height * 1.21, size.width * 1.42,
        size.height * 1.15, size.width * 1.42, size.height * 1.15);
    path.cubicTo(size.width * 1.42, size.height * 1.15, size.width * 1.42,
        size.height * 0.61, size.width * 1.42, size.height * 0.61);
    path.cubicTo(size.width * 1.42, size.height * 0.61, size.width * 1.19,
        size.height * 0.38, size.width * 1.19, size.height * 0.38);
    path.cubicTo(size.width * 1.19, size.height * 0.38, size.width * 1.19,
        size.height * 0.38, size.width * 1.19, size.height * 0.38);
    path.cubicTo(size.width * 1.19, size.height * 0.38, size.width * 1.19,
        size.height * 0.38, size.width * 1.19, size.height * 0.38);
    canvas.drawPath(path, paint);

    // Path number 6

    paint.color = const Color(0xff00D2B8);
    path = Path();
    path.lineTo(size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width * 0.84,
        size.height * 0.04, size.width * 0.84, size.height * 0.04);
    path.cubicTo(size.width * 0.8, 0, size.width * 0.75, -0.01,
        size.width * 0.73, size.height * 0.01);
    path.cubicTo(size.width * 0.73, size.height * 0.01, size.width * 0.3,
        size.height * 0.3, size.width * 0.3, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.3, size.width * 0.96,
        size.height * 0.29, size.width * 0.96, size.height * 0.29);
    path.cubicTo(size.width * 0.96, size.height * 0.29, size.width,
        size.height * 0.3, size.width, size.height * 0.3);
    path.cubicTo(size.width, size.height * 0.3, size.width * 1.03,
        size.height * 0.3, size.width * 1.04, size.height * 0.3);
    path.cubicTo(size.width * 1.04, size.height * 0.3, size.width,
        size.height / 5, size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width, size.height / 5,
        size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width, size.height / 5,
        size.width, size.height / 5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
