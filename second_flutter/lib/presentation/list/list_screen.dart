import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_flutter/application/theme_service.dart';
import 'package:second_flutter/presentation/list/widgets/list_item.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    
    List<String> example = [
      'Lewis Hammilton',
      'Max Verstapen',
      'Charles Leclerc',
      'Lando Norris',
      'Oscar Piastri',
      'George Russel',
      'Nico Hulkenberg'
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'List Screen',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold),
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
              return ListItem(
                title: '${example[index]}',
                index: index,
              );
            },
          ),
        ),
        // floatingActionButton: Container(
        //   child: Switch(
        //     value: switchValue,
        //     onChanged: (value) {
        //       print('Value1 : $value | $switchValue');
        //       setState(() {
        //         switchValue = value;
        //         print('Value2 : $value | $switchValue');
        //         Provider.of<ThemeService>(context, listen: false).toggleTheme();
        //       });
        //     }),
        // ),
      );
  }
}
