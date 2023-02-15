import 'package:boom_cubos/app/view/app_view.dart';
import 'package:flutter/material.dart';

import '../res/theme.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: BoomTheme.theme,
      home: const AppView(),
    );
  }
}