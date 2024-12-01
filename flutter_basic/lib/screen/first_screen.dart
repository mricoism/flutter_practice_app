import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen',
            style: TextStyle(color: Colors.yellow, fontSize: 24)),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pop(context); // Akan pop atau pindah ke root screen atau page.
              print('Back to home from first screen');
            },
            child: Container(
              height: 60,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              child: Text(
                'Back to Home',
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
