import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.purpleAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Widget ScrollView',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                  child: const Flexible(
                child: Text(
                  'Sistem Informasi pengelolaan anggaran proyek Studi kasus PT. Prambanan Lestari',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset('assets/architec_vector.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 300,
                width: 300,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn0-production-images-kly.akamaized.net/tSyp-0xpGpffJ8LhnXM5cl7UHg4=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4140834/original/099794800_1661853173-1.jpg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Container(
                  height: 600,
                  width: 200,
                  color: Colors.limeAccent,
                ),
              ), 
              //const Expanded(child: Text('Hanya Test')) // Ini Akan Error karna expanded akan menggunakan space yang ada untuk memaksimalkan sebuah item, sementara scrollview tidak memiliki batasan
            ]),
          ),
        ),
      ),
    );
  }
}
