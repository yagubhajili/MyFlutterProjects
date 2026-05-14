// lib/bird.dart

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame/collisions.dart';
import 'package:flame_game/my_game.dart';
import 'package:flame_game/pipe.dart';
import 'package:flutter/material.dart';
import 'main.dart';

// 1. Create a PositionComponent (size, position, etc.)
class Bird extends PositionComponent
    with HasGameRef<MyGame>, TapCallbacks, CollisionCallbacks {
  Bird() : super(anchor: Anchor.center);

  // 2. Define standard game variables
  double velocityY = 0;
  final double gravity = 1000;
  final double jumpStrength = -400;

  @override
  Future<void> onLoad() async {
    size = Vector2(40, 40);
    // Center it horizontally, and put it 1/3 down the screen
    position = Vector2(gameRef.size.x / 4, gameRef.size.y / 2);
    add(RectangleHitbox());
  }

  // 4. Implement simple rendering for prototyping
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), Paint()..color = Colors.yellow);
  }

  // 5. The continuous update loop (delta time 'dt')
  @override
  void update(double dt) {
    super.update(dt);

    // Apply gravity
    velocityY += gravity * dt;

    // Move the bird based on its velocity
    y += velocityY * dt;

    // Check if bird hits the ground or top ceiling
    if (y < 0 || y > gameRef.size.y) {
      gameRef.isGameOver = true;
    }
  }

  // 6. Handle the jump when the user taps
  @override
  void onTapDown(TapDownEvent event) {
    if (!gameRef.isGameOver) {
      velocityY = jumpStrength;
    }
  }

  // 7. Collision detected (what happens when we hit a pipe)
  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Pipe) {
      gameRef.isGameOver = true;
    }
    super.onCollision(intersectionPoints, other);
  }
}
