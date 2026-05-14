import 'package:flame/components.dart';
import 'package:flutter/material.dart';

// Use 'HasGameRef' to access the actual screen size
class Background extends Component with HasGameRef {
  @override
  void render(Canvas canvas) {
    // Use gameRef.size to fill exactly the visible area
    canvas.drawRect(
      Rect.fromLTWH(0, 0, gameRef.size.x, gameRef.size.y),
      Paint()..color = const Color(0xFF40C4FF),
    );
  }
}
