import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/home_example.dart';

class ScreenSeven extends StatelessWidget {
  const ScreenSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.lightBlueAccent)),
      home: const HomeExampleScreen(),
    );
  }
}
