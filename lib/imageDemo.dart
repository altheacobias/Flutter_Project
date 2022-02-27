import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.amber, title: Text('Image')),
          body: Container(
            child: Picture(),
          )),
    );
  }
}

class Picture extends StatelessWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('asset/sunset.jpg');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}
