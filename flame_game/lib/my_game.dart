// This is the "MyGame" class the error was complaining about!
import 'package:flame/game.dart';
import 'package:flame_game/background.dart';
import 'package:flame_game/bird.dart';
import 'package:flame_game/pipe.dart';

class MyGame extends FlameGame with HasCollisionDetection {
  // 1. Define the components
  late Bird bird;
  bool isGameOver = false;

  @override
  Future<void> onLoad() async {
    // 2. Add the background
    await add(Background());

    // 3. Initialize and add the bird to the world
    bird = Bird();
    world.add(bird);

    // 4. Add the pipe spawner to the world
    world.add(PipeSpawner());
  }

  @override
  void update(double dt) {
    super.update(dt);

    // 5. Check if game is over and show the overlay
    if (isGameOver && !overlays.activeOverlays.contains('GameOver')) {
      overlays.add('GameOver');
      pauseEngine(); // Stops the movement
    }
  }

  // 6. Logic to reset the game
  void restart() {
    isGameOver = false;

    // Clear pipes and reset bird
    world.removeAll(world.children.whereType<Pipe>());
    bird.position = Vector2(size.x / 4, size.y / 2);
    bird.velocityY = 0;

    resumeEngine(); // Start the loop again
  }
}
