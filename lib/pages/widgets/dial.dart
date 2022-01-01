import 'dart:math';

import 'package:flutter/material.dart';

class Dial extends CustomPainter {
  var dateTime = DateTime.now();

  // 60 sec -360, 1 sec - 6 degree

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    final fillBrush = Paint()..color = const Color(0xFF000000);
    final fillBrush2 = Paint()..color = const Color.fromRGBO(16, 23, 31, 1);
    final outlineBrush = Paint()
      ..color = const Color.fromRGBO(16, 23, 31, 1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 70;

    final centerFillBrush = Paint()
      ..color = const Color.fromRGBO(12, 15, 18, 0.7);

    canvas.drawCircle(center, radius, outlineBrush);

    var dashBrush = Paint()
      ..color = const Color(0xFFEAECFF)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;
    var dashBrushYellow = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4;

    var outerCircleRadius = radius;
    var innerCirlceRadius = radius - 14;
    for (double i = 0; i < 360; i += 12) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCirlceRadius * cos(i * pi / 180);
      var y2 = centerX + innerCirlceRadius * sin(i * pi / 180);

      if (i % 5 == 0) {
        final TextPainter textPainter = TextPainter(
          text: TextSpan(text: '$i'),
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: 100, minWidth: 0);
        textPainter.paint(canvas, Offset(x1, y1));
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrushYellow);

        print(i);
      } else {
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
