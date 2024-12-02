import 'package:flutter/material.dart';
import 'package:second_flutter/presentation/counter/counter_screen.dart';
import 'package:second_flutter/presentation/list/list_screen.dart';
import 'package:second_flutter/presentation/theme_animation/theme_animation_screen.dart';
import 'package:second_flutter/theme.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentWidget = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentWidget,
        children: const [ListScreen(), CounterScreen(), ThemeAnimationScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          // selectedItemColor: Colors.purple,
          onTap: (index) {
            setState(() {
              _currentWidget = index;
            });
          },
          currentIndex: _currentWidget,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_sharp), label: 'Users'),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch_later_outlined), label: 'Counter'),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: 'Theme'),
          ]),
    );
  }
}
