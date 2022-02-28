import 'package:flutter/material.dart';

class FrontShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..lineTo(0, 200)
      // ..moveTo(50, 200)
      // ..lineTo(150, 0)
      ..moveTo(0, 200)
      ..lineTo(0, 150);
    // ..lineTo(150, 0)
    // ..close();

    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
