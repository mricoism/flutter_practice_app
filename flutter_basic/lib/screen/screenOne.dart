import 'package:flutter/material.dart';

/// Coloum & Padding & sizedBox

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
      )),
      home: Scaffold(
          appBar: AppBar(
              title: SizedBox(
            child: Icon(Icons.verified_user_rounded),
          )),
          body: Container(
            color: Colors.greenAccent,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.pink,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('First Column child'),
                  ),
                ),
                SizedBox(
                  height: 160,
                  width: 160,
                ),
                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      'Hi Everyone!',
                      style: TextStyle(color: Colors.purple, fontSize: 24),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Last Column Child')
              ],
            ),
          )),
    );
  }
}
