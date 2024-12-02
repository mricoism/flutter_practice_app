import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;


  const ListItem({super.key, required this.title, required this.index});

  
  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    // bool checked = false;
    return ListTile(
      title: Text(
        '${widget.title}',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text('Item number : ${widget.index}'),
      leading: Checkbox(
        value: checked,
        onChanged: (value) {
          setState(() {
            checked = value ?? true;
          });
          print("Checked Value : $value, ${widget.index}, ${widget.title}");
        },
      ),
    );
  }
}
