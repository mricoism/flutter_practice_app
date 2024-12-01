import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String pictureUrl;
  final String name;
  final String age;
  final String country;
  final String job;
  const Person(
      {super.key,
      required this.pictureUrl,
      required this.name,
      required this.age,
      required this.country,
      required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(pictureUrl))),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                  ),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ))
            ],
          ),
          Column(
            children: [
              _createPersonInfoRow(key: "Age", value: age, context: context),
              _createPersonInfoRow(key: "Country", value: country, context: context),
              _createPersonInfoRow(key: "Job", value: job, context: context)
            ],
          )
        ],
      ),
    );
  }
}

Row _createPersonInfoRow({required String key, required String value, required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(
        child: Text(
          key,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      const Spacer(),
      Expanded(
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      )
    ],
  );
}
