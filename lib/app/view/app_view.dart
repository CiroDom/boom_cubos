import 'dart:async';

import 'package:boom_cubos/app/data/game_status.dart';
import 'package:boom_cubos/app/view/components/game_bomb.dart';
import 'package:boom_cubos/app/view/components/game_explosion.dart';
import 'package:boom_cubos/app/view/components/game_start.dart';
import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  GameStatus _gameStatus = GameStatus.begin;

  void _startGame() {
    setState(() => _gameStatus = GameStatus.actived);
    Timer(GameStatus.boomDuration, () => setState(() => _gameStatus = GameStatus.done));
  }

  void _backToBegin() {
    setState(() => _gameStatus = GameStatus.begin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (context) {
            if (_gameStatus == GameStatus.begin) {
              return GameStart(onStartClicked: _startGame);
            }
            else if (_gameStatus == GameStatus.actived) {
              return GameBomb();
            }

            return GameExplosion(onBackPressed: _backToBegin);
          },
        ),
      ),
    );
  }
}