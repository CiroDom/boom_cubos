import 'dart:math';

enum GameStatus {
  begin,
  actived,
  done;

  const GameStatus();

  static Duration get boomDuration => Duration(seconds: Random().nextInt(35) + 10);
}