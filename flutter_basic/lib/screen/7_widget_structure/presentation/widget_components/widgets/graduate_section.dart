import 'package:flutter/material.dart';

class GraduateSection extends StatelessWidget {
  const GraduateSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      color: Colors.cyanAccent,
      child: Image.asset('assets/graduate.png'),
    );
  }
}