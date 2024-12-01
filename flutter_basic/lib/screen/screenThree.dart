import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/components/space_item.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.cyan)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('add assets & stack'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text('Sistem Informasi pengelolaan anggaran proyek'),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 100,
                    width: 400,
                    child: Image.asset(
                      'assets/graduate.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'GRADUATION Intern - Riko',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset('assets/architec_vector.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn0-production-images-kly.akamaized.net/tSyp-0xpGpffJ8LhnXM5cl7UHg4=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4140834/original/099794800_1661853173-1.jpg'), //NetworkImage
                    ),
                  ),
                  const Positioned(
                      left: 24,
                      bottom: 10,
                      child: Text(
                        'Vonzy',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
