import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameExplosion extends StatelessWidget {
  final VoidCallback onBackPressed;

  const GameExplosion({
    super.key,
    required this.onBackPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Você perdeu!',
            textAlign: TextAlign.center,
          ),
          Image.network(
            'https://opengameart.org/sites/default/files/explosion1.gif',
            alignment: Alignment.centerLeft,
            height: 350.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 75.0,),
          ElevatedButton(
            onPressed: onBackPressed,
            child: const Text('VOLTAR'),
          ),
        ],
      ),
    );
  }

}