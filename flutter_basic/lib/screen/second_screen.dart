
import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/first_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen',
            style: TextStyle(color: Colors.yellow, fontSize: 24)),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return FirstScreen();
              }));
              print('Back to home from second screen');
            },
            child: Container(
              height: 60,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              child: Text(
                'Move to First Screen',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}