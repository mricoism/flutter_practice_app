import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/components/space_item.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/widgets/graduate_section.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/widgets/header_section.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/widgets/motivation_section.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/widgets/person.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/widget_components/widgets/row_section.dart';
import 'package:flutter_basic/screen/first_screen.dart';
import 'package:flutter_basic/screen/second_screen.dart';

class HomeExampleScreen extends StatelessWidget {
  const HomeExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Langit Musik',
      //     style: TextStyle(
      //         color: Colors.purpleAccent,
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              HeaderSection(),
              SizedBox(
                height: 20,
              ),
              RowSection(),
              SpaceItem(),
              Person(
                  pictureUrl:
                      "https://cdn-6.motorsport.com/images/mgl/Yv854VL0/s800/charles-leclerc-ferrari-1.jpg",
                  name: "Charles Leclerc",
                  age: '25',
                  country: 'Monaco',
                  job: "Driver"),
              SpaceItem(),
              Person(
                  pictureUrl:
                      'https://pm1.aminoapps.com/6473/2b4588a0c2898a45104406c167c487272c7694a2_hq.jpg',
                  name: "Naruto Uzumaki",
                  age: '17',
                  country: 'Konoha Gakure',
                  job:
                      'Shinobi, Team 7, Great war shinobi hero, Hokage Konoha'),
              SpaceItem(),
              SizedBox(
                height: 20,
              ),
              GraduateSection(),
              SizedBox(
                height: 20,
              ),
              MotivationSection(),
              SpaceItem(),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/firstScreen');
                    // Navigator.pushNamed(context, '/firstScreen');
                    print('Move to screen one');
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Screen One',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                         fontWeight: FontWeight.bold),
                    ),
                  )),
              SpaceItem(),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/secondScreen');
                    // Navigator.pushNamed(context, '/firstScreen');
                    print('Move to screen one');
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Screen Two',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              SpaceItem()
            ],
          ),
        ),
      ),
    );
  }
}
