import 'package:flutter/material.dart';

class ScreenSix extends StatelessWidget {
  const ScreenSix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white60)),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'LayoutBuilder',
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.black,
                child: Center(
                    child: LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    height: constraints.maxHeight / 4,
                    width: constraints.maxWidth / 2,
                    color: Colors.blue,
                  );
                })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
