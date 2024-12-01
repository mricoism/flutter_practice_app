import 'package:flutter/material.dart';

class MotivationSection extends StatelessWidget {
  const MotivationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      color: Colors.cyanAccent,
      // child: LayoutBuilder(builder: (context, constraints) {
      //   return SizedBox(
      //     height: 100,
      //     width: 100,
      //     child: Image.asset('assets/architec_vector.png'),
      //   );
      // }),
      child: Center(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
          
          child: Image.asset('assets/motivation.jpeg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}