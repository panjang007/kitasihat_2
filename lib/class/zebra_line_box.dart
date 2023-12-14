import 'package:flutter/material.dart';

class ZebraLineBox extends StatelessWidget {
  const ZebraLineBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: const BoxDecoration(
        color: Colors.yellow, // Set the background color
      ),
      child: CustomPaint(
        painter: ZebraLinePainter(),
      ),
    );
  }
}

class ZebraLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5.0;

    // Calculate the diagonal line path
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, 0);

    // Draw the diagonal line
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
