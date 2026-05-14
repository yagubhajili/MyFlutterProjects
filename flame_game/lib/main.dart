// lib/main.dart

import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame_game/my_game.dart';
import 'package:flutter/material.dart';
import 'bird.dart';
import 'pipe.dart';
import 'background.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GameWidget<MyGame>(
          game: MyGame(),
          // This is the "Registry" the error was looking for!
          overlayBuilderMap: {
            'GameOver': (context, game) {
              return Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.black54,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'GAME OVER',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          game.overlays.remove('GameOver');
                          game.restart(); // Call your restart logic
                        },
                        child: const Text('Restart'),
                      ),
                    ],
                  ),
                ),
              );
            },
          },
        ),
      ),
    ),
  );
}
