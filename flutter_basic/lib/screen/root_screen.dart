
import 'package:flutter/material.dart';
import 'package:flutter_basic/root_bottom_navigation.dart';
import 'package:flutter_basic/screen/first_screen.dart';
import 'package:flutter_basic/screen/second_screen.dart';
import 'package:flutter_basic/theme.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const RootBottomNavigation(),
      routes: <String, WidgetBuilder> {
        '/root': (BuildContext context) => const RootBottomNavigation(),
        '/firstScreen': (BuildContext context) => const FirstScreen(),
        '/secondScreen':(BuildContext context) => const SecondScreen(),
      },
    );
  }
}