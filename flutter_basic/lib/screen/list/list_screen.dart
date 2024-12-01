import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/list/widgets/list_item.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> example = [
      'Riko',
      'Irham',
      'Adi',
      'Rizal',
      'Wahyu',
      'Pian',
      'rehan'
    ];
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white60)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'List Screen',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: example.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.black,
              );
            },
            itemBuilder: (context, index) {
              return ListItem(title: '${example[index]}', index: index,);
            },
          ),
        ),
      ),
    );
  }
}
