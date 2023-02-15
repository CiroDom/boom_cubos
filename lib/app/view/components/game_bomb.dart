import 'package:flutter/material.dart';

class GameBomb extends StatelessWidget {
  const GameBomb({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://i.pinimg.com/originals/97/00/ff/9700ff5255003108cbb1c7b49e666637.gif',
            alignment: Alignment.centerLeft,
            height: 350.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 75.0,),
          const Text(
              'Passe a bomba!',
              textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

}