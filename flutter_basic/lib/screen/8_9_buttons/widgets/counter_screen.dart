import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Count : $counter",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: (counter > 10) ? Colors.red : Colors.black),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
      ),
    );
  }
}
