// lib/pipe.dart

import 'package:flame/components.dart';
import 'package:flame/collisions.dart';
import 'package:flame_game/my_game.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';

// 1. Defining the specific Pipe object
class Pipe extends PositionComponent with HasGameRef<MyGame> {
  final bool isTopPipe;
  Pipe({required this.isTopPipe, Vector2? size})
    : super(size: size ?? Vector2(60, 400));

  final double speed = -200; // Move left quickly

  @override
  Future<void> onLoad() async {
    // 2. Add a collision box matching the pipe size
    add(RectangleHitbox());
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(size.toRect(), Paint()..color = Colors.green);
  }

  @override
  void update(double dt) {
    super.update(dt);

    // Move left continuously
    x += speed * dt;

    // Optimization: Remove if off-screen to the left
    if (x < -size.x) {
      removeFromParent();
    }
  }
}

// lib/pipe.dart (continued)

class PipeSpawner extends Component with HasGameRef<MyGame> {
  final double pipeGapHeight = 150.0;
  final double secondsBetweenPipes = 1.5;
  double timer = 0;

  final Random random = Random();

  @override
  void update(double dt) {
    timer += dt;
    if (timer >= 1.5) {
      print("Spawning new pipes!"); // Check your Debug Console for this message
      timer = 0;
      _spawnPipes();
    }
  }

  void _spawnPipes() {
    final double screenWidth = gameRef.size.x;
    final double screenHeight = gameRef.size.y;

    // 1. Determine a random height for the gap
    final double minHeight = 100;
    final double gap = 200; // Size of the hole the bird flies through
    final double maxTopHeight = screenHeight - minHeight - gap;
    final double topHeight =
        minHeight + Random().nextDouble() * (maxTopHeight - minHeight);

    // 2. Create the pipes
    final topPipe = Pipe(isTopPipe: true, size: Vector2(60, topHeight))
      ..position = Vector2(screenWidth, 0); // Start at right edge

    final bottomPipe = Pipe(
      isTopPipe: false,
      size: Vector2(60, screenHeight - topHeight - gap),
    )..position = Vector2(screenWidth, topHeight + gap);

    // 3. Add to world
    gameRef.world.addAll([topPipe, bottomPipe]);
  }
}
