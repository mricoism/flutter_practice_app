import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState(); //
}

class _MainScreenState extends State<MainScreen> {
  // method ini private. hanya bisa diakses di file yang sama.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blueAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basic"),
        ),
        body: Center(
            child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "hello World",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Hola Everyone!");
            print("My name is Muhammad Riko Ismail");
          },
          child: const Icon(Icons.circle_outlined),
        ),
      ),
    );
  }
}
