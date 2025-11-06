import 'package:flutter/material.dart';
import 'dart:math';

class CurvedPageIndicator extends CustomPainter {
  final PageController pageController;
  final int dotCount;
  final Color activeDotColor;
  final Color inactiveDotColor;
  final double dotRadius;
  final double spacing;

  CurvedPageIndicator({
    required this.pageController,
    required this.dotCount,
    this.activeDotColor = Colors.red,
    this.inactiveDotColor = Colors.grey,
    this.dotRadius = 5.0,
    this.spacing = 10.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = inactiveDotColor
      ..style = PaintingStyle.fill;

    final activePaint = Paint()
      ..color = activeDotColor
      ..style = PaintingStyle.fill;

    final double totalWidth = (dotCount * (dotRadius * 2 + spacing)) - spacing;
    final double startX = (size.width - totalWidth) / 2;
    final double centerY = size.height / 2;

    // Draw inactive dots
    for (int i = 0; i < dotCount; i++) {
      final double x = startX + i * (dotRadius * 2 + spacing) + dotRadius;
      canvas.drawCircle(Offset(x, centerY), dotRadius, paint);
    }

    // Draw active dot (or curved indicator for active state)
    if (pageController.hasClients && pageController.position.hasContentDimensions) {
      final double scrollPosition = pageController.page ?? pageController.initialPage.toDouble();
      final int activePageIndex = scrollPosition.floor();
      final double offset = scrollPosition - activePageIndex;

      // Calculate the position of the active dot based on scroll offset
      final double currentDotX = startX + activePageIndex * (dotRadius * 2 + spacing) + dotRadius;
      final double nextDotX = startX + (activePageIndex + 1) * (dotRadius * 2 + spacing) + dotRadius;

      // For a smooth curve, we'll draw a custom shape that interpolates between dots
      // This is a simplified example, a true smooth curve might require more complex Bezier curves
      // For now, let's draw an elongated active dot that moves and slightly deforms

      double animatedWidth = dotRadius * 2 + (spacing + dotRadius * 2) * offset.abs();
      double animatedX = currentDotX;

      if (offset > 0) { // Moving right
        animatedX = currentDotX + (spacing + dotRadius * 2) * offset;
      } else if (offset < 0) { // Moving left
        animatedX = currentDotX + (spacing + dotRadius * 2) * offset;
      }

      // To simulate a curve, we can adjust the y-coordinate slightly based on the offset
      // This is a very basic approximation of a curve.
      double curvedOffset = sin(offset * pi) * dotRadius; // Max curve at halfway point

      Rect activeRect;
      if (offset >= 0) { // Moving right or stationary
        activeRect = Rect.fromLTWH(
          currentDotX - dotRadius,
          centerY - dotRadius - curvedOffset,
          dotRadius * 2 + (spacing + dotRadius * 2) * offset,
          dotRadius * 2 + curvedOffset * 2,
        );
      } else { // Moving left
        activeRect = Rect.fromLTWH(
          nextDotX - dotRadius + (spacing + dotRadius * 2) * offset.abs(),
          centerY - dotRadius - curvedOffset,
          dotRadius * 2 + (spacing + dotRadius * 2) * offset.abs(),
          dotRadius * 2 + curvedOffset * 2,
        );
      }

      canvas.drawRRect(
        RRect.fromRectAndRadius(activeRect, Radius.circular(dotRadius)),
        activePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
