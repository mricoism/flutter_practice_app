import 'package:flutter/material.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white60)),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'MediaQuery',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text(
                    'Media Query Example 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MediaQueryExample(),
                const SizedBox(
                  height: 20,
                ),

                /// Menyiasati jika Context harus digunkaan di next widget / build funtion
                Builder(builder: (context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Text('Media Query Example 3',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  );
                })
              ],
            ),
          )),
    );
  }
}

/// INI DIGUNAKAN HANYA JIKA SKENARIONYA :
/// Context pada builder harus di gunakan pada builder selanjutnya (Next Widget Next Build Function)
/// contoh A B Dan C. Kita tidak bisa menggunakan MediaQuery context langsung di A, Jadi baru bisa di pakai di B dan di C.
class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height / 5,
      color: Colors.red,
      alignment: Alignment.center,
      child: Text('Media Query Example 2',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}
