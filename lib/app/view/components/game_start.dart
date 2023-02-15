import 'package:flutter/material.dart';

class GameStart extends StatelessWidget {
  final VoidCallback onStartClicked;

  const GameStart({
    super.key,
    required this.onStartClicked,
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
            'Corra da bomba',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 75.0,),
          ElevatedButton(
              onPressed: onStartClicked,
              child: const Text('INICIAR'),
          )
        ],
      ),
    );
  }
}