import 'dart:ui';

import 'package:flutter/material.dart';

class Pointer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.red
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2500000, size.height * 0.2842857);
    path0.cubicTo(
        size.width * 0.2978667,
        size.height * 0.2432143,
        size.width * 0.2878417,
        size.height * 0.2434571,
        size.width * 0.3308333,
        size.height * 0.2828571);
    path0.quadraticBezierTo(size.width * 0.2964583, size.height * 0.1890571,
        size.width * 0.2913833, size.height * 0.0726143);
    path0.quadraticBezierTo(size.width * 0.2873500, size.height * 0.1871000,
        size.width * 0.2500000, size.height * 0.2842857);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
