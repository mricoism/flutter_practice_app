import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.greenAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row & Expanded + flexible',
              style: TextStyle(color: Colors.yellow, fontSize: 24)),
        ),
        body: Container(
          color: Colors.lightGreenAccent,
          child: Row(
            children: [
              const Flexible(
                child: Text(
                  'Muhammad Riko Ismai - im mobile developer who live in jakarta',
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.indigo,
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.redAccent,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Germany is my country',
                style: TextStyle(color: Colors.blueAccent, fontSize: 16),
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              const Expanded(
                  child: Text(
                'Hola everyone!',
                style: TextStyle(color: Colors.red, fontSize: 24),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
