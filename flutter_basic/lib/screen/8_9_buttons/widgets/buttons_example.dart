import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/7_widget_structure/presentation/components/space_item.dart';
import 'package:flutter_basic/screen/8_9_buttons/components/9_custom_button.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  bool switchOneState = true;
  bool switchTwoState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TextButton(
            onLongPress: () {
              print('LONG PRESSS');
            },
            onPressed: () {
              print('On Pressed Submit Button');
            },
            child: Text(
              'Submit Form',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              print('Second Button');
            },
            child: Container(
              height: 60,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              child: Text(
                'Save Profiles',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        IconButton(
          onPressed: () {
            print('Media Played');
          },
          icon: Icon(
            Icons.play_circle_fill,
          ),
          color: Colors.blue,
          iconSize: 100,
          // style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
        ),
        Switch(
            value: switchOneState,
            
            onChanged: (value) {
              setState(() {
                switchOneState = value;
              });
              print("Status togle atau switch : $value");
            }),
        SizedBox(
          height: 20,
        ),
        CustomButton(
          onTap: () {
            print("Ini custom On tap");
          },
          icon: Icons.camera,
          color: Colors.white,
        ),
        SpaceItem(),
        CustomButton(
            onTap: () {
              print('Hola Amigos');
            },
            icon: Icons.person,
            color: Colors.amber),
        SpaceItem(),
        CustomButtonGesture(
            onTap: () {
              print('User has been logout');
            },
            text: 'Log Out'),
        SpaceItem(),
        Switch(
            value: switchTwoState,
            onChanged: (value) {
              setState(() {});
              switchTwoState = value;
              print("Switch Two : $value");
            }),
        SpaceItem()
      ],
    );
  }
}
