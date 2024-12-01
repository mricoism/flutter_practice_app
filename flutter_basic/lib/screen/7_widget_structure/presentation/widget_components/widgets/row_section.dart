import 'package:flutter/material.dart';

class RowSection extends StatelessWidget {
  const RowSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      color: Colors.cyanAccent,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn0-production-images-kly.akamaized.net/tSyp-0xpGpffJ8LhnXM5cl7UHg4=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4140834/original/099794800_1661853173-1.jpg'),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/architec_vector.png'),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn0-production-images-kly.akamaized.net/tSyp-0xpGpffJ8LhnXM5cl7UHg4=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4140834/original/099794800_1661853173-1.jpg'),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/architec_vector.png'),
            ),
          ],
        ),
      ),
    );
  }
}