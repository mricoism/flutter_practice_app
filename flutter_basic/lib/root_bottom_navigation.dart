import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/7_widget_structure/7_widget_structure.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/home_example.dart';
import 'package:flutter_basic/screen/8_9_buttons/widgets/counter_screen.dart';
import 'package:flutter_basic/screen/list/list_screen.dart';
import 'package:flutter_basic/screen/screenThree.dart';

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
      body: IndexedStack(index: _currentWidget, children: const [
        ListScreen(),
        CounterScreen(),
        HomeExampleScreen()
      ],),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
          onTap: (index) {
            setState(() {
              _currentWidget = index;
            });
          },
          currentIndex: _currentWidget,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: 'Users'),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch_later_outlined), label: 'Counter'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album_outlined), label: 'Album'),
          ]),
    );
  }
}
