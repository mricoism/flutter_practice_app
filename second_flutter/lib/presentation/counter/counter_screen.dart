import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_flutter/application/theme_service.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:
          (BuildContext context, ThemeService themeService, Widget? child) {
        return Scaffold(
          body: Center(
            child: Text(
              "Count : $counter",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: themeService.isDarkModeOn ? Colors.white : Colors.black),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  heroTag: 'hero1',
                  onPressed: () {
                    setState(() {
                      if (counter > 0) {
                        counter -= 1;
                      }
                    });
                  },
                  backgroundColor: Colors.red,
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: 'hero2',
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
