import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      color: Colors.amber,
      child: Text(
        'Hai sobat, \nDengarkan yang lagi hits',
        style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}